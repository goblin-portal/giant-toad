import 'dart:math' as math;

import 'package:flame/components.dart';

class GiantToadPerceptionTarget<T> {
  const GiantToadPerceptionTarget({
    required this.value,
    required this.position,
    this.tags = const {},
  });
  final T value;
  final Vector2 position;
  final Set<String> tags;
}

class GiantToadPerceptionResult<T> {
  const GiantToadPerceptionResult({
    required this.target,
    required this.distance,
  });
  final GiantToadPerceptionTarget<T> target;
  final double distance;
}

abstract final class GiantToadPerception {
  static List<GiantToadPerceptionResult<T>> visible<T>({
    required Vector2 origin,
    required Vector2 facing,
    required double radius,
    required Iterable<GiantToadPerceptionTarget<T>> targets,
    double fieldOfView = math.pi * 2,
    String? tag,
    bool Function(Vector2 origin, Vector2 target)? isOccluded,
  }) {
    if (radius < 0 || fieldOfView < 0 || fieldOfView > math.pi * 2) {
      throw ArgumentError('Invalid perception radius or field of view.');
    }
    final radiusSquared = radius * radius;
    final fullCircle = fieldOfView >= math.pi * 2 - 1e-9;
    final facingNormal = facing.isZero() ? Vector2(1, 0) : facing.normalized();
    final minimumDot = math.cos(fieldOfView / 2);
    final result = <GiantToadPerceptionResult<T>>[];
    for (final target in targets) {
      if (tag != null && !target.tags.contains(tag)) continue;
      final delta = target.position - origin;
      final distanceSquared = delta.length2;
      if (distanceSquared > radiusSquared) continue;
      if (!fullCircle &&
          distanceSquared > 0 &&
          delta.normalized().dot(facingNormal) < minimumDot) {
        continue;
      }
      if (isOccluded?.call(origin, target.position) ?? false) continue;
      result.add(
        GiantToadPerceptionResult(
          target: target,
          distance: math.sqrt(distanceSquared),
        ),
      );
    }
    result.sort((a, b) {
      final distance = a.distance.compareTo(b.distance);
      return distance != 0
          ? distance
          : a.target.position.y.compareTo(b.target.position.y);
    });
    return List.unmodifiable(result);
  }
}
