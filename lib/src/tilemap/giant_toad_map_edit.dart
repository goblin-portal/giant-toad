import 'giant_toad_map_document.dart';

typedef GiantToadEditedChunk = ({String layerId, GiantToadChunkKey chunk});

/// One reversible cell replacement in a sparse map layer.
class GiantToadMapCellChange {
  const GiantToadMapCellChange({
    required this.layerId,
    required this.x,
    required this.y,
    required this.before,
    required this.after,
  });

  final String layerId;
  final int x;
  final int y;
  final GiantToadMapCell before;
  final GiantToadMapCell after;

  GiantToadMapCellChange get inverse => GiantToadMapCellChange(
    layerId: layerId,
    x: x,
    y: y,
    before: after,
    after: before,
  );
}

/// A committed, reversible batch of sparse cell changes.
///
/// A brush stroke becomes one [GiantToadMapEdit], so undo/redo applies an
/// atomic user action rather than individual pointer samples.
class GiantToadMapEdit {
  GiantToadMapEdit(Iterable<GiantToadMapCellChange> changes)
    : changes = List.unmodifiable(changes) {
    if (this.changes.isEmpty) {
      throw ArgumentError.value(changes, 'changes', 'must not be empty');
    }
  }

  final List<GiantToadMapCellChange> changes;

  /// Layer/chunk pairs whose rendered content changes when this edit applies.
  Set<GiantToadEditedChunk> affectedChunks(int chunkSize) => {
    for (final change in changes)
      (
        layerId: change.layerId,
        chunk: GiantToadChunkKey(
          _floorDivide(change.x, chunkSize),
          _floorDivide(change.y, chunkSize),
        ),
      ),
  };

  GiantToadMapEdit get inverse =>
      GiantToadMapEdit(changes.reversed.map((change) => change.inverse));

  /// Applies this edit without mutating [document].
  ///
  /// Only touched layers, chunks, and cell lists are copied. Empty chunks are
  /// removed, retaining the sparse on-disk representation.
  GiantToadMapDocument apply(GiantToadMapDocument document) {
    final layerIndexes = <String, int>{
      for (var index = 0; index < document.layers.length; index++)
        document.layers[index].id: index,
    };
    final copiedLayers = <int, _MutableLayer>{};

    for (final change in changes) {
      final layerIndex = layerIndexes[change.layerId];
      if (layerIndex == null) {
        throw ArgumentError.value(
          change.layerId,
          'changes',
          'references an unknown layer',
        );
      }
      final layer = copiedLayers.putIfAbsent(
        layerIndex,
        () => _MutableLayer.fromLayer(document.layers[layerIndex]),
      );
      layer.setCell(
        x: change.x,
        y: change.y,
        value: change.after,
        chunkSize: document.chunkSize,
      );
    }

    final layers = List<GiantToadMapLayer>.of(document.layers);
    for (final entry in copiedLayers.entries) {
      layers[entry.key] = entry.value.toLayer();
    }
    return GiantToadMapDocument(
      tileSize: document.tileSize,
      chunkSize: document.chunkSize,
      layers: layers,
      objects: document.objects,
      additionalFields: document.additionalFields,
    );
  }
}

/// Collects an efficient, atomic edit while a paint stroke is in progress.
class GiantToadMapEditTransaction {
  GiantToadMapEditTransaction(this.document);

  final GiantToadMapDocument document;
  final _changes = <_CellKey, GiantToadMapCellChange>{};

  bool get isEmpty => _changes.isEmpty;

  /// Records the final value at a cell. Repeated calls for the same cell keep
  /// the pre-stroke value and replace only the final value.
  void setCell({
    required String layerId,
    required int x,
    required int y,
    required GiantToadMapCell value,
  }) {
    final key = _CellKey(layerId, x, y);
    final existing = _changes[key];
    final before = existing?.before ?? _cellAt(document, key);
    if (before == value && existing == null) {
      return;
    }
    if (before == value) {
      _changes.remove(key);
      return;
    }
    _changes[key] = GiantToadMapCellChange(
      layerId: layerId,
      x: x,
      y: y,
      before: before,
      after: value,
    );
  }

  /// Returns the pending edit, or `null` when no cells changed.
  GiantToadMapEdit? commit() {
    return _changes.isEmpty ? null : GiantToadMapEdit(_changes.values);
  }

  static GiantToadMapCell _cellAt(GiantToadMapDocument document, _CellKey key) {
    final layer = document.layers.where((layer) => layer.id == key.layerId);
    if (layer.isEmpty) {
      throw ArgumentError.value(key.layerId, 'layerId', 'unknown map layer');
    }
    final chunkSize = document.chunkSize;
    final chunkX = _floorDivide(key.x, chunkSize);
    final chunkY = _floorDivide(key.y, chunkSize);
    final cells = layer.first.chunks[GiantToadChunkKey(chunkX, chunkY)];
    if (cells == null) {
      return 0;
    }
    final localX = key.x - chunkX * chunkSize;
    final localY = key.y - chunkY * chunkSize;
    return cells[localY * chunkSize + localX];
  }
}

class _MutableLayer {
  _MutableLayer.fromLayer(GiantToadMapLayer layer)
    : id = layer.id,
      name = layer.name,
      additionalFields = layer.additionalFields,
      chunks = Map<GiantToadChunkKey, List<GiantToadMapCell>>.from(
        layer.chunks,
      );

  final String id;
  final String name;
  final Map<String, Object?> additionalFields;
  final Map<GiantToadChunkKey, List<GiantToadMapCell>> chunks;

  void setCell({
    required int x,
    required int y,
    required GiantToadMapCell value,
    required int chunkSize,
  }) {
    final chunkX = _floorDivide(x, chunkSize);
    final chunkY = _floorDivide(y, chunkSize);
    final key = GiantToadChunkKey(chunkX, chunkY);
    final cells = List<GiantToadMapCell>.of(
      chunks[key] ?? List<GiantToadMapCell>.filled(chunkSize * chunkSize, 0),
    );
    final localX = x - chunkX * chunkSize;
    final localY = y - chunkY * chunkSize;
    cells[localY * chunkSize + localX] = value;
    if (cells.every((cell) => cell == null || cell == 0)) {
      chunks.remove(key);
    } else {
      chunks[key] = cells;
    }
  }

  GiantToadMapLayer toLayer() => GiantToadMapLayer(
    id: id,
    name: name,
    chunks: chunks,
    additionalFields: additionalFields,
  );
}

class _CellKey {
  const _CellKey(this.layerId, this.x, this.y);

  final String layerId;
  final int x;
  final int y;

  @override
  bool operator ==(Object other) =>
      other is _CellKey &&
      other.layerId == layerId &&
      other.x == x &&
      other.y == y;

  @override
  int get hashCode => Object.hash(layerId, x, y);
}

int _floorDivide(int dividend, int divisor) {
  return dividend >= 0
      ? dividend ~/ divisor
      : -((-dividend + divisor - 1) ~/ divisor);
}
