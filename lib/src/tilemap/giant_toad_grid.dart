import 'dart:ui';

import 'package:flame/components.dart';

/// Reusable integer grid math for sparse tilemaps.
abstract final class GiantToadGrid {
  /// Converts world pixels to the containing cell using floor division.
  static Vector2 worldToCell({
    required Vector2 worldPosition,
    required int tileSize,
    Vector2? output,
  }) {
    _checkTileSize(tileSize);
    final cell = output ?? Vector2.zero();
    cell.setValues(
      (worldPosition.x / tileSize).floorToDouble(),
      (worldPosition.y / tileSize).floorToDouble(),
    );
    return cell;
  }

  /// Converts a cell coordinate to the world position of its top-left corner.
  static Vector2 cellToWorld({
    required Vector2 cell,
    required int tileSize,
    Vector2? output,
  }) {
    _checkTileSize(tileSize);
    final world = output ?? Vector2.zero();
    world.setValues(cell.x * tileSize, cell.y * tileSize);
    return world;
  }

  /// Returns the pixel bounds of a cell.
  static Rect cellBounds({
    required int x,
    required int y,
    required int tileSize,
  }) {
    _checkTileSize(tileSize);
    final size = tileSize.toDouble();
    return Rect.fromLTWH(x * size, y * size, size, size);
  }

  static void _checkTileSize(int tileSize) {
    if (tileSize <= 0) {
      throw ArgumentError.value(tileSize, 'tileSize', 'must be positive');
    }
  }
}

/// Bitmask generation for `bitmask16` and gated eight-neighbour blob rules.
abstract final class GiantToadAutotile {
  /// Returns the cardinal bitmask: north=1, east=2, south=4, west=8.
  static int cardinalMask({
    required int x,
    required int y,
    required bool Function(int x, int y) matches,
  }) {
    var mask = 0;
    if (matches(x, y - 1)) mask |= 1;
    if (matches(x + 1, y)) mask |= 2;
    if (matches(x, y + 1)) mask |= 4;
    if (matches(x - 1, y)) mask |= 8;
    return mask;
  }

  /// Returns a gated eight-neighbour blob mask.
  ///
  /// Diagonals are included only when both adjacent cardinal neighbours match:
  /// north-east=16, south-east=32, south-west=64, north-west=128.
  static int blobMask({
    required int x,
    required int y,
    required bool Function(int x, int y) matches,
  }) {
    final north = matches(x, y - 1);
    final east = matches(x + 1, y);
    final south = matches(x, y + 1);
    final west = matches(x - 1, y);
    var mask = 0;
    if (north) mask |= 1;
    if (east) mask |= 2;
    if (south) mask |= 4;
    if (west) mask |= 8;
    if (north && east && matches(x + 1, y - 1)) mask |= 16;
    if (south && east && matches(x + 1, y + 1)) mask |= 32;
    if (south && west && matches(x - 1, y + 1)) mask |= 64;
    if (north && west && matches(x - 1, y - 1)) mask |= 128;
    return mask;
  }
}
