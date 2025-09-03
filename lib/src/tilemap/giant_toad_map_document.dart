import 'dart:convert';
import 'giant_toad_json.dart';

/// The JSON-compatible scalar, list, or object stored in a map cell.
typedef GiantToadMapCell = Object?;
Object? _freezeJsonValue(Object? value) => switch (value) {
  final Map<Object?, Object?> value => Map<String, Object?>.unmodifiable({
    for (final entry in value.entries)
      entry.key as String: _freezeJsonValue(entry.value),
  }),
  final List<Object?> value => List<Object?>.unmodifiable(
    value.map(_freezeJsonValue),
  ),
  _ => value,
};

Map<String, Object?> _freezeJsonMap(Map<String, Object?> value) =>
    _freezeJsonValue(value)! as Map<String, Object?>;

/// A stable coordinate key for a sparse tile chunk.
class GiantToadChunkKey {
  const GiantToadChunkKey(this.x, this.y);

  factory GiantToadChunkKey.parse(String value) {
    final parts = value.split(',');
    if (parts.length != 2) {
      throw FormatException('Invalid chunk key: $value');
    }
    final x = int.tryParse(parts[0]);
    final y = int.tryParse(parts[1]);
    if (x == null || y == null) {
      throw FormatException('Invalid chunk key: $value');
    }
    return GiantToadChunkKey(x, y);
  }

  final int x;
  final int y;

  @override
  String toString() => '$x,$y';

  @override
  bool operator ==(Object other) =>
      other is GiantToadChunkKey && x == other.x && y == other.y;

  @override
  int get hashCode => Object.hash(x, y);
}

/// Mutable counters populated by a bounded sparse-layer traversal.
class GiantToadMapTraversalMetrics {
  int chunksVisited = 0;
  int cellsVisited = 0;
}

Map<GiantToadChunkKey, List<GiantToadMapCell>> _decodeLayerChunks(
  Object? value, {
  required String layerId,
  required int chunkSize,
}) {
  if (value == null) return const {};
  if (value is! Map<Object?, Object?>) {
    throw FormatException('Map layer "$layerId" has invalid chunks.');
  }
  return {
    for (final entry in value.entries)
      _decodeChunkKey(entry.key, layerId: layerId): _decodeChunkCells(
        entry.value,
        layerId: layerId,
        chunkSize: chunkSize,
        chunkKey: entry.key,
      ),
  };
}

GiantToadChunkKey _decodeChunkKey(Object? value, {required String layerId}) {
  if (value is! String) {
    throw FormatException('Map layer "$layerId" has an invalid chunk key.');
  }
  return GiantToadChunkKey.parse(value);
}

List<GiantToadMapCell> _decodeChunkCells(
  Object? value, {
  required String layerId,
  required int chunkSize,
  required Object? chunkKey,
}) {
  if (value is! List<Object?>) {
    throw FormatException('Map layer "$layerId" has invalid chunk cells.');
  }
  if (value.length != chunkSize * chunkSize) {
    throw FormatException(
      'Chunk $chunkKey in layer "$layerId" must contain '
      '${chunkSize * chunkSize} cells.',
    );
  }
  return List<GiantToadMapCell>.from(value);
}

/// One sparse, row-major tile layer from a `map.json` document.
class GiantToadMapLayer {
  GiantToadMapLayer({
    required this.id,
    required this.name,
    required Map<GiantToadChunkKey, List<GiantToadMapCell>> chunks,
    Map<String, Object?> additionalFields = const {},
  }) : chunks = Map.unmodifiable({
         for (final entry in chunks.entries)
           entry.key: List<GiantToadMapCell>.unmodifiable(
             entry.value.map(_freezeJsonValue),
           ),
       }),
       additionalFields = _freezeJsonMap(additionalFields);

  factory GiantToadMapLayer.fromJson(
    Map<String, Object?> json, {
    required int chunkSize,
  }) {
    final reader = GiantToadJsonReader(json, context: 'Map layer');
    final id = reader.string('id');
    final additionalFields = Map<String, Object?>.from(json)
      ..remove('id')
      ..remove('name')
      ..remove('chunks');
    return GiantToadMapLayer(
      id: id,
      name: reader.string('name'),
      chunks: _decodeLayerChunks(
        json['chunks'],
        layerId: id,
        chunkSize: chunkSize,
      ),
      additionalFields: additionalFields,
    );
  }

  /// Stable machine identifier referenced by catalog definitions.
  final String id;

  /// User-facing layer name.
  final String name;

  /// Sparse chunks, keyed by signed chunk coordinates.
  final Map<GiantToadChunkKey, List<GiantToadMapCell>> chunks;

  /// Fields unknown to this package, retained during a decode/encode cycle.
  final Map<String, Object?> additionalFields;

  /// Whether the bounds contain at least one authored non-empty cell.
  bool hasCellInBounds({
    required int chunkSize,
    required int minX,
    required int minY,
    required int maxX,
    required int maxY,
  }) {
    if (minX > maxX || minY > maxY) return false;
    final minChunkX = _floorDivide(minX, chunkSize);
    final minChunkY = _floorDivide(minY, chunkSize);
    final maxChunkX = _floorDivide(maxX, chunkSize);
    final maxChunkY = _floorDivide(maxY, chunkSize);
    for (var chunkY = minChunkY; chunkY <= maxChunkY; chunkY++) {
      for (var chunkX = minChunkX; chunkX <= maxChunkX; chunkX++) {
        final cells = chunks[GiantToadChunkKey(chunkX, chunkY)];
        if (cells == null) continue;
        final startX = chunkX * chunkSize;
        final startY = chunkY * chunkSize;
        final localMinX = (minX - startX).clamp(0, chunkSize - 1).toInt();
        final localMinY = (minY - startY).clamp(0, chunkSize - 1).toInt();
        final localMaxX = (maxX - startX).clamp(0, chunkSize - 1).toInt();
        final localMaxY = (maxY - startY).clamp(0, chunkSize - 1).toInt();
        for (var localY = localMinY; localY <= localMaxY; localY++) {
          for (var localX = localMinX; localX <= localMaxX; localX++) {
            final cell = cells[localY * chunkSize + localX];
            if (cell != null && cell != 0) return true;
          }
        }
      }
    }
    return false;
  }

  /// Invokes [visit] for each non-empty cell in the inclusive cell bounds.
  ///
  /// Only chunks intersecting the bounds are scanned. This is the runtime
  /// traversal contract for renderers and spatial systems.
  void forEachCellInBounds({
    required int chunkSize,
    required int minX,
    required int minY,
    required int maxX,
    required int maxY,
    required void Function(GiantToadMapCell cell, int x, int y) visit,
    GiantToadMapTraversalMetrics? metrics,
  }) {
    if (metrics != null) {
      metrics.chunksVisited = 0;
      metrics.cellsVisited = 0;
    }
    if (minX > maxX || minY > maxY) return;

    final minChunkX = _floorDivide(minX, chunkSize);
    final minChunkY = _floorDivide(minY, chunkSize);
    final maxChunkX = _floorDivide(maxX, chunkSize);
    final maxChunkY = _floorDivide(maxY, chunkSize);

    for (var chunkY = minChunkY; chunkY <= maxChunkY; chunkY++) {
      for (var chunkX = minChunkX; chunkX <= maxChunkX; chunkX++) {
        final cells = chunks[GiantToadChunkKey(chunkX, chunkY)];
        if (cells == null) continue;
        metrics?.chunksVisited++;

        final startX = chunkX * chunkSize;
        final startY = chunkY * chunkSize;
        final localMinX = (minX - startX).clamp(0, chunkSize - 1).toInt();
        final localMinY = (minY - startY).clamp(0, chunkSize - 1).toInt();
        final localMaxX = (maxX - startX).clamp(0, chunkSize - 1).toInt();
        final localMaxY = (maxY - startY).clamp(0, chunkSize - 1).toInt();
        for (var localY = localMinY; localY <= localMaxY; localY++) {
          for (var localX = localMinX; localX <= localMaxX; localX++) {
            final cell = cells[localY * chunkSize + localX];
            metrics?.cellsVisited++;
            if (cell != null && cell != 0) {
              visit(cell, startX + localX, startY + localY);
            }
          }
        }
      }
    }
  }

  static int _floorDivide(int dividend, int divisor) {
    return dividend >= 0
        ? dividend ~/ divisor
        : -((-dividend + divisor - 1) ~/ divisor);
  }

  Map<String, Object?> toJson() => {
    ...additionalFields,
    'id': id,
    'name': name,
    'chunks': {
      for (final entry in chunks.entries) entry.key.toString(): entry.value,
    },
  };
}

/// The canonical representation of a sparse `map.json` file.
///
/// Chunks are sparse and row-major. Their keys are `"chunkX,chunkY"`, and a
/// chunk contains exactly `chunkSize * chunkSize` cells. Empty cells are `0`.
/// A non-empty cell is either a legacy numeric tile ID or an authored JSON
/// object, such as `{ "tileId": 0, "region": "desert:6", "mask": 255 }`.
class GiantToadMapDocument {
  GiantToadMapDocument({
    required this.tileSize,
    this.chunkSize = 16,
    required List<GiantToadMapLayer> layers,
    List<Map<String, Object?>> objects = const [],
    Map<String, Object?> additionalFields = const {},
  }) : layers = List.unmodifiable(layers),
       objects = List.unmodifiable(objects.map(_freezeJsonMap)),
       additionalFields = _freezeJsonMap(additionalFields) {
    if (tileSize <= 0) {
      throw ArgumentError.value(tileSize, 'tileSize', 'must be positive');
    }
    if (chunkSize <= 0) {
      throw ArgumentError.value(chunkSize, 'chunkSize', 'must be positive');
    }
  }

  factory GiantToadMapDocument.fromJson(Map<String, Object?> json) {
    final tileSize = json['tileSize'];
    if (tileSize is! int || tileSize <= 0) {
      throw FormatException('A map requires a positive integer tileSize.');
    }
    final chunkSize = json['chunkSize'] ?? 16;
    if (chunkSize is! int || chunkSize <= 0) {
      throw FormatException('Map chunkSize must be a positive integer.');
    }
    final rawLayers = json['layers'];
    if (rawLayers is! List) {
      throw FormatException('A map requires a layers array.');
    }
    final layers = rawLayers
        .map((rawLayer) {
          if (rawLayer is! Map) {
            throw FormatException('Map layers must be JSON objects.');
          }
          return GiantToadMapLayer.fromJson(
            Map<String, Object?>.from(rawLayer),
            chunkSize: chunkSize,
          );
        })
        .toList(growable: false);
    final rawObjects = json['objects'] ?? const [];
    if (rawObjects is! List || rawObjects.any((object) => object is! Map)) {
      throw FormatException('Map objects must be a JSON object array.');
    }

    final additionalFields = Map<String, Object?>.from(json)
      ..remove('tileSize')
      ..remove('chunkSize')
      ..remove('layers')
      ..remove('objects');
    return GiantToadMapDocument(
      tileSize: tileSize,
      chunkSize: chunkSize,
      layers: layers,
      objects: rawObjects
          .map((object) => Map<String, Object?>.from(object as Map))
          .toList(growable: false),
      additionalFields: additionalFields,
    );
  }

  /// Pixel dimension of one grid cell.
  final int tileSize;

  /// Number of cells along one side of every square sparse chunk.
  final int chunkSize;

  final List<GiantToadMapLayer> layers;

  /// Placed object documents, preserved for the future object runtime.
  final List<Map<String, Object?>> objects;

  /// Fields unknown to this package, retained during a decode/encode cycle.
  final Map<String, Object?> additionalFields;

  Map<String, Object?> toJson() => {
    ...additionalFields,
    'tileSize': tileSize,
    'chunkSize': chunkSize,
    'layers': layers.map((layer) => layer.toJson()).toList(growable: false),
    'objects': objects,
  };
}

/// Decodes and encodes the JSON text stored in a `map.json` file.
abstract final class GiantToadMapDocumentCodec {
  static GiantToadMapDocument decode(String source) {
    final decoded = jsonDecode(source);
    if (decoded is! Map) {
      throw FormatException('A map document must be a JSON object.');
    }
    return GiantToadMapDocument.fromJson(Map<String, Object?>.from(decoded));
  }

  static String encode(GiantToadMapDocument document) {
    return jsonEncode(document.toJson());
  }
}
