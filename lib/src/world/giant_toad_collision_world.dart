import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/components.dart';

class GiantToadWorldCollider {
  GiantToadWorldCollider({
    required this.id,
    required this.bounds,
    this.trigger = false,
    Iterable<String> tags = const [],
  }) : tags = Set.unmodifiable(tags);

  final String id;
  final Rect bounds;
  final bool trigger;
  final Set<String> tags;
}

class GiantToadWorldHit {
  const GiantToadWorldHit({required this.collider, required this.normal});
  final GiantToadWorldCollider collider;
  final Vector2 normal;
}

class GiantToadWorldMoveResult {
  const GiantToadWorldMoveResult({
    required this.bounds,
    required this.applied,
    required this.hits,
  });
  final Rect bounds;
  final Vector2 applied;
  final List<GiantToadWorldHit> hits;
}

class GiantToadRaycastHit {
  const GiantToadRaycastHit({
    required this.collider,
    required this.point,
    required this.distance,
  });
  final GiantToadWorldCollider collider;
  final Vector2 point;
  final double distance;
}

/// Sparse broadphase-independent rectangle world for small authored collision
/// sets. Entity-to-entity hitboxes remain Flame collision components.
class GiantToadCollisionWorld {
  final List<GiantToadWorldCollider> _colliders = [];
  List<GiantToadWorldCollider> get colliders => List.unmodifiable(_colliders);

  void add(GiantToadWorldCollider collider) {
    if (_colliders.any((entry) => entry.id == collider.id)) {
      throw StateError('Duplicate world collider id "${collider.id}".');
    }
    _colliders.add(collider);
  }

  GiantToadWorldMoveResult moveAndSlide(Rect body, Vector2 delta) {
    var dx = delta.x;
    var dy = delta.y;
    var moved = body;
    final hits = <GiantToadWorldHit>[];
    for (final collider in _colliders.where((entry) => !entry.trigger)) {
      if (!_overlapsAxis(
        body.top,
        body.bottom,
        collider.bounds.top,
        collider.bounds.bottom,
      )) {
        continue;
      }
      if (dx > 0 &&
          body.right <= collider.bounds.left &&
          body.right + dx > collider.bounds.left) {
        dx = math.min(dx, collider.bounds.left - body.right);
        hits.add(GiantToadWorldHit(collider: collider, normal: Vector2(-1, 0)));
      } else if (dx < 0 &&
          body.left >= collider.bounds.right &&
          body.left + dx < collider.bounds.right) {
        dx = math.max(dx, collider.bounds.right - body.left);
        hits.add(GiantToadWorldHit(collider: collider, normal: Vector2(1, 0)));
      }
    }
    moved = body.shift(Offset(dx, 0));
    for (final collider in _colliders.where((entry) => !entry.trigger)) {
      if (!_overlapsAxis(
        moved.left,
        moved.right,
        collider.bounds.left,
        collider.bounds.right,
      )) {
        continue;
      }
      if (dy > 0 &&
          moved.bottom <= collider.bounds.top &&
          moved.bottom + dy > collider.bounds.top) {
        dy = math.min(dy, collider.bounds.top - moved.bottom);
        hits.add(GiantToadWorldHit(collider: collider, normal: Vector2(0, -1)));
      } else if (dy < 0 &&
          moved.top >= collider.bounds.bottom &&
          moved.top + dy < collider.bounds.bottom) {
        dy = math.max(dy, collider.bounds.bottom - moved.top);
        hits.add(GiantToadWorldHit(collider: collider, normal: Vector2(0, 1)));
      }
    }
    moved = moved.shift(Offset(0, dy));
    return GiantToadWorldMoveResult(
      bounds: moved,
      applied: Vector2(dx, dy),
      hits: List.unmodifiable(hits),
    );
  }

  List<GiantToadWorldCollider> touching(Rect body, {String? tag}) => [
    for (final collider in _colliders)
      if (collider.bounds.overlaps(body) &&
          (tag == null || collider.tags.contains(tag)))
        collider,
  ];

  GiantToadRaycastHit? raycast(Vector2 start, Vector2 end, {String? tag}) {
    final delta = end - start;
    GiantToadRaycastHit? nearest;
    for (final collider in _colliders) {
      if (collider.trigger || (tag != null && !collider.tags.contains(tag))) {
        continue;
      }
      final fraction = _rayFraction(start, delta, collider.bounds);
      if (fraction == null) continue;
      final distance = delta.length * fraction;
      if (nearest == null || distance < nearest.distance) {
        nearest = GiantToadRaycastHit(
          collider: collider,
          point: start + delta * fraction,
          distance: distance,
        );
      }
    }
    return nearest;
  }

  static bool _overlapsAxis(double a0, double a1, double b0, double b1) =>
      a1 > b0 && a0 < b1;

  static double? _rayFraction(Vector2 start, Vector2 delta, Rect bounds) {
    var near = 0.0;
    var far = 1.0;
    for (final axis in [
      (start.x, delta.x, bounds.left, bounds.right),
      (start.y, delta.y, bounds.top, bounds.bottom),
    ]) {
      final (origin, direction, minimum, maximum) = axis;
      if (direction.abs() < 1e-12) {
        if (origin < minimum || origin > maximum) return null;
        continue;
      }
      var first = (minimum - origin) / direction;
      var second = (maximum - origin) / direction;
      if (first > second) (first, second) = (second, first);
      near = math.max(near, first);
      far = math.min(far, second);
      if (near > far) return null;
    }
    return near;
  }
}
