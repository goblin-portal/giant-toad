import 'dart:ui';

import 'giant_toad_map_document.dart';
import 'giant_toad_json.dart';

/// Typed interpretation of a legacy numeric or rich tile cell.
class GiantToadTileCell {
  const GiantToadTileCell({
    required this.tileId,
    this.region,
    this.mask,
    this.properties = const {},
  });

  factory GiantToadTileCell.fromCell(GiantToadMapCell cell) {
    if (cell is int) return GiantToadTileCell(tileId: cell);
    if (cell is! Map) {
      throw const FormatException('Tile cell must be an integer or object.');
    }
    final json = Map<String, Object?>.from(cell);
    final tileId = json['tileId'];
    final region = json['region'];
    final mask = json['mask'];
    if (tileId is! int || tileId < 0) {
      throw const FormatException(
        'Rich tile cell requires a non-negative tileId.',
      );
    }
    if (region != null && region is! String) {
      throw const FormatException('Tile region must be a string.');
    }
    if (mask != null && mask is! int) {
      throw const FormatException('Tile mask must be an integer.');
    }
    return GiantToadTileCell(
      tileId: tileId,
      region: region as String?,
      mask: mask as int?,
      properties: Map.unmodifiable(
        json
          ..remove('tileId')
          ..remove('region')
          ..remove('mask'),
      ),
    );
  }

  final int tileId;
  final String? region;
  final int? mask;
  final Map<String, Object?> properties;
}

/// One timed frame in an animated tile definition.
class GiantToadTileAnimationFrame {
  const GiantToadTileAnimationFrame({
    required this.tileId,
    required this.duration,
  });

  final int tileId;
  final Duration duration;
}

/// A deterministic looping tile animation.
class GiantToadTileAnimation {
  GiantToadTileAnimation(Iterable<GiantToadTileAnimationFrame> frames)
    : frames = List.unmodifiable(frames),
      totalDuration = frames.fold(
        Duration.zero,
        (total, frame) => total + frame.duration,
      ) {
    if (this.frames.isEmpty ||
        this.frames.any((frame) => frame.duration <= Duration.zero)) {
      throw ArgumentError('Tile animation frames require positive durations.');
    }
  }

  final List<GiantToadTileAnimationFrame> frames;
  final Duration totalDuration;

  int tileAt(Duration elapsed) {
    var cursor = elapsed.inMicroseconds % totalDuration.inMicroseconds;
    for (final frame in frames) {
      if (cursor < frame.duration.inMicroseconds) return frame.tileId;
      cursor -= frame.duration.inMicroseconds;
    }
    return frames.last.tileId;
  }
}

Map<int, GiantToadTileAnimation> _decodeTileAnimations(Object? value) {
  if (value == null) return const {};
  if (value is! Map<Object?, Object?>) {
    throw const FormatException('Tileset animations must be an object.');
  }
  return Map.unmodifiable({
    for (final entry in value.entries)
      _animationTileId(entry.key): _decodeTileAnimation(entry.value),
  });
}

int _animationTileId(Object? value) {
  final tileId = int.tryParse(value.toString());
  if (tileId == null || tileId < 0) {
    throw const FormatException('Invalid tileset animation tile id.');
  }
  return tileId;
}

GiantToadTileAnimation _decodeTileAnimation(Object? value) {
  if (value is! List<Object?> || value.isEmpty) {
    throw const FormatException('Invalid tileset animation.');
  }
  return GiantToadTileAnimation(value.map(_decodeTileAnimationFrame));
}

GiantToadTileAnimationFrame _decodeTileAnimationFrame(Object? value) {
  if (value case {
    'tileId': final int tileId,
    'durationMs': final int durationMs,
  } when tileId >= 0 && durationMs > 0) {
    return GiantToadTileAnimationFrame(
      tileId: tileId,
      duration: Duration(milliseconds: durationMs),
    );
  }
  throw const FormatException('Invalid tile animation frame.');
}

/// A tileset image laid out as a regular pixel grid.
class GiantToadTileset {
  const GiantToadTileset({
    required this.id,
    required this.image,
    required this.firstTileId,
    required this.columns,
    required this.tileCount,
    required this.tileWidth,
    required this.tileHeight,
    this.margin = 0,
    this.spacing = 0,
    this.animations = const {},
  });

  factory GiantToadTileset.fromJson(Map<String, Object?> json) {
    final reader = GiantToadJsonReader(json, context: 'Tileset');
    return GiantToadTileset(
      id: reader.string('id'),
      image: reader.string('image', safePath: true),
      firstTileId: reader.integer('firstTileId', allowZero: true),
      columns: reader.integer('columns'),
      tileCount: reader.integer('tileCount'),
      tileWidth: reader.integer('tileWidth'),
      tileHeight: reader.integer('tileHeight'),
      margin: reader.integer('margin', fallback: 0, allowZero: true),
      spacing: reader.integer('spacing', fallback: 0, allowZero: true),
      animations: _decodeTileAnimations(json['animations']),
    );
  }

  final String id;
  final String image;
  final int firstTileId;
  final int columns;
  final int tileCount;
  final int tileWidth;
  final int tileHeight;
  final int margin;
  final int spacing;
  final Map<int, GiantToadTileAnimation> animations;

  int displayedTile(int tileId, Duration elapsed) =>
      animations[tileId]?.tileAt(elapsed) ?? tileId;

  bool contains(int tileId) =>
      tileId >= firstTileId && tileId < firstTileId + tileCount;

  Rect sourceRect(int tileId) {
    if (!contains(tileId)) {
      throw RangeError.value(tileId, 'tileId', 'outside tileset $id');
    }
    final local = tileId - firstTileId;
    final x = margin + (local % columns) * (tileWidth + spacing);
    final y = margin + (local ~/ columns) * (tileHeight + spacing);
    return Rect.fromLTWH(
      x.toDouble(),
      y.toDouble(),
      tileWidth.toDouble(),
      tileHeight.toDouble(),
    );
  }
}

/// A typed object placed in a sparse map.
class GiantToadMapObject {
  const GiantToadMapObject({
    required this.id,
    required this.type,
    required this.x,
    required this.y,
    this.width = 0,
    this.height = 0,
    this.properties = const {},
  });

  factory GiantToadMapObject.fromJson(Map<String, Object?> json) {
    final reader = GiantToadJsonReader(json, context: 'Map object');
    final type = json['type'] ?? json['kind'];
    if (type is! String || type.isEmpty) {
      throw const FormatException(
        'Map object type must be a non-empty string.',
      );
    }
    final properties = Map<String, Object?>.from(json)
      ..remove('id')
      ..remove('type')
      ..remove('kind')
      ..remove('x')
      ..remove('y')
      ..remove('width')
      ..remove('height');
    return GiantToadMapObject(
      id: reader.string('id'),
      type: type,
      x: reader.finiteNumber('x'),
      y: reader.finiteNumber('y'),
      width: reader.finiteNumber('width', fallback: 0, nonNegative: true),
      height: reader.finiteNumber('height', fallback: 0, nonNegative: true),
      properties: Map.unmodifiable(properties),
    );
  }

  final String id;
  final String type;
  final double x;
  final double y;
  final double width;
  final double height;
  final Map<String, Object?> properties;

  Rect get bounds => Rect.fromLTWH(x, y, width, height);
}

/// Typed object-spawn registry. Register Flame component factories in game
/// bootstrap code rather than switching on object types inside render loops.
class GiantToadMapObjectFactories<T extends Object> {
  final Map<String, T Function(GiantToadMapObject object)> _factories = {};

  void register(String type, T Function(GiantToadMapObject object) factory) {
    if (type.isEmpty) throw ArgumentError.value(type, 'type');
    if (_factories.containsKey(type)) {
      throw StateError(
        'A map object factory for "$type" is already registered.',
      );
    }
    _factories[type] = factory;
  }

  T create(GiantToadMapObject object) {
    final factory = _factories[object.type];
    if (factory == null) {
      throw StateError(
        'No map object factory registered for "${object.type}".',
      );
    }
    return factory(object);
  }

  List<T> createAll(Iterable<GiantToadMapObject> objects) =>
      objects.map(create).toList(growable: false);
}

extension GiantToadMapRuntimeDocument on GiantToadMapDocument {
  List<GiantToadMapObject> get typedObjects =>
      objects.map(GiantToadMapObject.fromJson).toList(growable: false);

  List<GiantToadTileset> get tilesets {
    final value = additionalFields['tilesets'];
    if (value == null) return const [];
    if (value is! List || value.any((entry) => entry is! Map)) {
      throw const FormatException('Map tilesets must be an object array.');
    }
    return value
        .map(
          (entry) => GiantToadTileset.fromJson(
            Map<String, Object?>.from(entry as Map),
          ),
        )
        .toList(growable: false);
  }
}

/// Resolves autotile masks into authored tile ids.
class GiantToadAutotileRules {
  GiantToadAutotileRules(Map<int, int> tileByMask)
    : tileByMask = Map.unmodifiable(tileByMask) {
    if (tileByMask.keys.any((mask) => mask < 0 || mask > 255) ||
        tileByMask.values.any((tile) => tile < 0)) {
      throw ArgumentError(
        'Autotile masks must be 0...255 and tile ids non-negative.',
      );
    }
  }

  final Map<int, int> tileByMask;

  int resolve(int mask, {required int fallback}) =>
      tileByMask[mask] ?? fallback;
}

List<GiantToadTileset> _indexTilesets(List<GiantToadTileset> tilesets) {
  final indexed = <GiantToadTileset>[...tilesets]
    ..sort((left, right) => left.firstTileId.compareTo(right.firstTileId));
  for (var index = 1; index < indexed.length; index++) {
    final previous = indexed[index - 1];
    final current = indexed[index];
    if (previous.firstTileId + previous.tileCount > current.firstTileId) {
      throw ArgumentError(
        'Tilesets ${previous.id} and ${current.id} have overlapping tile ids.',
      );
    }
  }
  return List.unmodifiable(indexed);
}

/// Nearest-neighbor atlas renderer usable as a [GiantToadTileRenderer].
class GiantToadAtlasTileRenderer {
  GiantToadAtlasTileRenderer({
    required this.image,
    required List<GiantToadTileset> tilesets,
  }) : tilesets = List.unmodifiable(tilesets),
       _tilesetsByFirstTile = _indexTilesets(tilesets),
       _paint = Paint()
         ..isAntiAlias = false
         ..filterQuality = FilterQuality.none;

  final Image image;
  final List<GiantToadTileset> tilesets;
  final List<GiantToadTileset> _tilesetsByFirstTile;
  final Paint _paint;
  Duration elapsed = Duration.zero;

  void advance(Duration delta) {
    if (delta.isNegative) throw ArgumentError.value(delta, 'delta');
    elapsed += delta;
  }

  GiantToadTileset? _tilesetFor(int tileId) {
    var low = 0;
    var high = _tilesetsByFirstTile.length - 1;
    while (low <= high) {
      final middle = low + ((high - low) >> 1);
      final candidate = _tilesetsByFirstTile[middle];
      if (tileId < candidate.firstTileId) {
        high = middle - 1;
      } else if (!candidate.contains(tileId)) {
        low = middle + 1;
      } else {
        return candidate;
      }
    }
    return null;
  }

  void call(
    Canvas canvas,
    GiantToadMapCell rawCell,
    int tileX,
    int tileY,
    int tileSize,
  ) {
    final cell = GiantToadTileCell.fromCell(rawCell);
    final tileset = _tilesetFor(cell.tileId);
    if (tileset == null) return;
    canvas.drawImageRect(
      image,
      tileset.sourceRect(tileset.displayedTile(cell.tileId, elapsed)),
      Rect.fromLTWH(
        (tileX * tileSize).toDouble(),
        (tileY * tileSize).toDouble(),
        tileSize.toDouble(),
        tileSize.toDouble(),
      ),
      _paint,
    );
  }
}
