import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

import '../tilemap/giant_toad_map_document.dart';

/// Collision behavior authored on a tile cell.
enum GiantToadTileMaterial {
  empty,
  solid,
  oneWayUp,
  slopeUpRight,
  slopeUpLeft,
  trigger,
}

/// Result of one tile-grid move-and-slide operation.
class GiantToadTileMoveResult {
  const GiantToadTileMoveResult({
    required this.position,
    required this.applied,
    required this.hitLeft,
    required this.hitRight,
    required this.hitTop,
    required this.hitBottom,
  });

  final Vector2 position;
  final Vector2 applied;
  final bool hitLeft;
  final bool hitRight;
  final bool hitTop;
  final bool hitBottom;

  bool get grounded => hitBottom;
}

/// Collision queries against one sparse solid tile layer.
class GiantToadTileCollision {
  GiantToadTileCollision({
    required this.document,
    String solidLayer = 'solids',
    bool Function(GiantToadMapCell cell)? isSolid,
    GiantToadTileMaterial Function(GiantToadMapCell cell)? materialFor,
    Iterable<GiantToadMapLayer> additionalLayers = const [],
  }) : layer = document.layers.firstWhere(
         (candidate) =>
             candidate.id.toLowerCase() == solidLayer.toLowerCase() ||
             candidate.name.toLowerCase() == solidLayer.toLowerCase(),
         orElse: () => throw StateError('Map has no "$solidLayer" layer.'),
       ),
       additionalLayers = List.unmodifiable(additionalLayers),
       materialFor =
           materialFor ??
           (isSolid == null
               ? _defaultMaterial
               : (cell) => isSolid(cell)
                     ? GiantToadTileMaterial.solid
                     : GiantToadTileMaterial.empty);

  final GiantToadMapDocument document;
  final GiantToadMapLayer layer;
  final List<GiantToadMapLayer> additionalLayers;
  final GiantToadTileMaterial Function(GiantToadMapCell cell) materialFor;

  static GiantToadTileMaterial _defaultMaterial(GiantToadMapCell cell) {
    if (cell == null || cell == 0) return GiantToadTileMaterial.empty;
    if (cell case {'collision': final String collision}) {
      return switch (collision) {
        'none' => GiantToadTileMaterial.empty,
        'oneWayUp' => GiantToadTileMaterial.oneWayUp,
        'slopeUpRight' => GiantToadTileMaterial.slopeUpRight,
        'slopeUpLeft' => GiantToadTileMaterial.slopeUpLeft,
        'trigger' => GiantToadTileMaterial.trigger,
        _ => GiantToadTileMaterial.solid,
      };
    }
    return GiantToadTileMaterial.solid;
  }

  GiantToadMapCell cell(int x, int y) {
    final chunkSize = document.chunkSize;
    final chunkX = _floorDivide(x, chunkSize);
    final chunkY = _floorDivide(y, chunkSize);
    final localX = x - chunkX * chunkSize;
    final localY = y - chunkY * chunkSize;
    for (final candidate in [layer, ...additionalLayers].reversed) {
      final cells = candidate.chunks[GiantToadChunkKey(chunkX, chunkY)];
      if (cells == null) continue;
      final value = cells[localY * chunkSize + localX];
      if (value != null && value != 0) return value;
    }
    return 0;
  }

  GiantToadTileMaterial materialAt(int x, int y) => materialFor(cell(x, y));

  bool solidAt(int x, int y) => materialAt(x, y) == GiantToadTileMaterial.solid;

  /// Trigger cells touched by [bounds], suitable for enter/exit state tracking.
  Set<math.Point<int>> triggerCells(Rect bounds) {
    final tileSize = document.tileSize;
    final result = <math.Point<int>>{};
    final minX = (bounds.left / tileSize).floor();
    final minY = (bounds.top / tileSize).floor();
    final maxX = ((bounds.right - 1e-9) / tileSize).floor();
    final maxY = ((bounds.bottom - 1e-9) / tileSize).floor();
    for (var y = minY; y <= maxY; y++) {
      for (var x = minX; x <= maxX; x++) {
        if (materialAt(x, y) == GiantToadTileMaterial.trigger) {
          result.add(math.Point(x, y));
        }
      }
    }
    return result;
  }

  /// Merges solid tile occupancy into deterministic maximal rectangles.
  /// Useful for Flame hitboxes and for comparing sparse-grid queries against a
  /// lower-body-count collision representation.
  List<Rect> mergedSolidRects({
    required int minX,
    required int minY,
    required int maxX,
    required int maxY,
  }) {
    if (minX > maxX || minY > maxY) return const [];
    final completed = <Rect>[];
    var active = <(int, int), Rect>{};
    final size = document.tileSize.toDouble();
    for (var y = minY; y <= maxY; y++) {
      final runs = <(int, int)>[];
      var x = minX;
      while (x <= maxX) {
        if (!solidAt(x, y)) {
          x++;
          continue;
        }
        final start = x;
        while (x <= maxX && solidAt(x, y)) {
          x++;
        }
        runs.add((start, x - start));
      }
      final next = <(int, int), Rect>{};
      for (final run in runs) {
        final previous = active.remove(run);
        next[run] = previous == null
            ? Rect.fromLTWH(run.$1 * size, y * size, run.$2 * size, size)
            : Rect.fromLTWH(
                previous.left,
                previous.top,
                previous.width,
                previous.height + size,
              );
      }
      completed.addAll(active.values);
      active = next;
    }
    completed.addAll(active.values);
    completed.sort((a, b) {
      final y = a.top.compareTo(b.top);
      return y != 0 ? y : a.left.compareTo(b.left);
    });
    return completed;
  }

  bool overlaps(Rect bounds) {
    final tileSize = document.tileSize;
    final minX = (bounds.left / tileSize).floor();
    final minY = (bounds.top / tileSize).floor();
    final maxX = ((bounds.right - 1e-9) / tileSize).floor();
    final maxY = ((bounds.bottom - 1e-9) / tileSize).floor();
    for (var y = minY; y <= maxY; y++) {
      for (var x = minX; x <= maxX; x++) {
        if (solidAt(x, y)) return true;
      }
    }
    return false;
  }

  GiantToadTileMoveResult moveAndSlide(Rect body, Vector2 delta) {
    var x = body.left;
    var y = body.top;
    var dx = delta.x;
    var dy = delta.y;
    var hitLeft = false;
    var hitRight = false;
    var hitTop = false;
    var hitBottom = false;
    final tileSize = document.tileSize.toDouble();

    if (dx != 0) {
      final startColumn = dx > 0
          ? ((body.right - 1e-9) / tileSize).floor()
          : (body.left / tileSize).floor();
      final endEdge = dx > 0 ? body.right + dx - 1e-9 : body.left + dx;
      final endColumn = (endEdge / tileSize).floor();
      final minY = (body.top / tileSize).floor();
      final maxY = ((body.bottom - 1e-9) / tileSize).floor();
      final step = dx > 0 ? 1 : -1;
      for (
        var column = startColumn + step;
        dx > 0 ? column <= endColumn : column >= endColumn;
        column += step
      ) {
        if ([
          for (var row = minY; row <= maxY; row++) solidAt(column, row),
        ].contains(true)) {
          dx = dx > 0
              ? math.min(dx, column * tileSize - body.right)
              : math.max(dx, (column + 1) * tileSize - body.left);
          hitRight = step > 0;
          hitLeft = step < 0;
          break;
        }
      }
      x += dx;
    }

    final movedX = Rect.fromLTWH(x, y, body.width, body.height);
    if (dy != 0) {
      final startRow = dy > 0
          ? ((movedX.bottom - 1e-9) / tileSize).floor()
          : (movedX.top / tileSize).floor();
      final endEdge = dy > 0 ? movedX.bottom + dy - 1e-9 : movedX.top + dy;
      final endRow = (endEdge / tileSize).floor();
      final minX = (movedX.left / tileSize).floor();
      final maxX = ((movedX.right - 1e-9) / tileSize).floor();
      final step = dy > 0 ? 1 : -1;
      for (
        var row = startRow + step;
        dy > 0 ? row <= endRow : row >= endRow;
        row += step
      ) {
        double? surface;
        for (var column = minX; column <= maxX; column++) {
          final material = materialAt(column, row);
          if (dy < 0 && material == GiantToadTileMaterial.solid) {
            surface = (row + 1) * tileSize;
            break;
          }
          if (dy <= 0) continue;
          final tileTop = row * tileSize;
          final candidate = switch (material) {
            GiantToadTileMaterial.solid => tileTop,
            GiantToadTileMaterial.oneWayUp
                when movedX.bottom <= tileTop + 1e-9 =>
              tileTop,
            GiantToadTileMaterial.slopeUpRight =>
              (row + 1) * tileSize -
                  ((movedX.center.dx - column * tileSize).clamp(
                    0,
                    tileSize,
                  )).toDouble(),
            GiantToadTileMaterial.slopeUpLeft =>
              tileTop +
                  ((movedX.center.dx - column * tileSize).clamp(
                    0,
                    tileSize,
                  )).toDouble(),
            _ => null,
          };
          if (candidate != null &&
              movedX.bottom <= candidate + 1e-9 &&
              movedX.bottom + dy >= candidate) {
            surface = surface == null
                ? candidate
                : math.min(surface, candidate);
          }
        }
        if (surface != null) {
          dy = dy > 0
              ? math.min(dy, surface - movedX.bottom)
              : math.max(dy, surface - movedX.top);
          hitBottom = step > 0;
          hitTop = step < 0;
          break;
        }
      }
      y += dy;
    }

    return GiantToadTileMoveResult(
      position: Vector2(x, y),
      applied: Vector2(dx, dy),
      hitLeft: hitLeft,
      hitRight: hitRight,
      hitTop: hitTop,
      hitBottom: hitBottom,
    );
  }

  static int _floorDivide(int value, int divisor) =>
      value >= 0 ? value ~/ divisor : -((-value + divisor - 1) ~/ divisor);
}

/// A deterministic kinematic platform. Give platforms a lower [priority] than
/// bodies so their [frameDelta] is ready before character updates.
class GiantToadMovingPlatform extends PositionComponent {
  GiantToadMovingPlatform({
    super.position,
    super.size,
    super.priority = -1,
    super.key,
  });

  final Vector2 velocity = Vector2.zero();
  final Vector2 frameDelta = Vector2.zero();

  @override
  void update(double dt) {
    frameDelta.setFrom(velocity * dt);
    position.add(frameDelta);
  }
}

/// Kinematic Flame component using tile-grid movement while retaining a normal
/// Flame hitbox for entity-to-entity collision callbacks.
class GiantToadPixelBody extends PositionComponent with CollisionCallbacks {
  GiantToadPixelBody({
    required this.collision,
    super.position,
    super.size,
    this.pixelSnap = true,
    this.platforms = const [],
    super.priority,
    super.key,
  });

  final GiantToadTileCollision collision;
  final bool pixelSnap;
  final List<GiantToadMovingPlatform> platforms;
  final Vector2 velocity = Vector2.zero();
  GiantToadTileMoveResult? lastMove;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(RectangleHitbox());
  }

  void _applyPlatformCarry(Rect original, Vector2 desired) {
    for (final platform in platforms) {
      final oldTop = platform.position.y - platform.frameDelta.y;
      final overlapsX =
          original.right > platform.position.x &&
          original.left < platform.position.x + platform.size.x;
      if (overlapsX && (original.bottom - oldTop).abs() <= 1e-6) {
        desired.add(platform.frameDelta);
        return;
      }
    }
  }

  GiantToadTileMoveResult _landOnPlatform(
    Rect original,
    Vector2 desired,
    GiantToadTileMoveResult result,
  ) {
    if (desired.y < 0) return result;
    for (final platform in platforms) {
      final oldTop = platform.position.y - platform.frameDelta.y;
      final newTop = platform.position.y;
      final next = Rect.fromLTWH(
        result.position.x,
        result.position.y,
        size.x,
        size.y,
      );
      final overlapsX =
          next.right > platform.position.x &&
          next.left < platform.position.x + platform.size.x;
      if (overlapsX &&
          original.bottom <= oldTop + 1e-6 &&
          next.bottom >= newTop) {
        final appliedY = newTop - original.bottom;
        return GiantToadTileMoveResult(
          position: Vector2(result.position.x, original.top + appliedY),
          applied: Vector2(result.applied.x, appliedY),
          hitLeft: result.hitLeft,
          hitRight: result.hitRight,
          hitTop: result.hitTop,
          hitBottom: true,
        );
      }
    }
    return result;
  }

  void _stopBlockedVelocity(GiantToadTileMoveResult result) {
    if ((result.hitLeft && velocity.x < 0) ||
        (result.hitRight && velocity.x > 0)) {
      velocity.x = 0;
    }
    if ((result.hitTop && velocity.y < 0) ||
        (result.hitBottom && velocity.y > 0)) {
      velocity.y = 0;
    }
  }

  @override
  void update(double dt) {
    final original = Rect.fromLTWH(position.x, position.y, size.x, size.y);
    final desired = velocity * dt;
    _applyPlatformCarry(original, desired);
    var result = collision.moveAndSlide(original, desired);
    result = _landOnPlatform(original, desired, result);
    position.setFrom(result.position);
    if (pixelSnap) {
      position.setValues(
        position.x.roundToDouble(),
        position.y.roundToDouble(),
      );
    }
    _stopBlockedVelocity(result);
    lastMove = result;
  }
}
