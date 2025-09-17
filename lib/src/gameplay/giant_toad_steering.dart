import 'package:flame/components.dart';

/// Allocation-conscious steering helpers for Flame position and velocity code.
abstract final class GiantToadSteering {
  /// Returns a velocity toward [target] at [speed].
  static Vector2 seek({
    required Vector2 position,
    required Vector2 target,
    required double speed,
    Vector2? output,
  }) {
    if (speed < 0) {
      throw ArgumentError.value(speed, 'speed', 'must not be negative');
    }
    final velocity = output ?? Vector2.zero();
    velocity.setFrom(target);
    velocity.sub(position);
    if (velocity.length2 > 0) {
      velocity.normalize();
      velocity.scale(speed);
    }
    return velocity;
  }

  /// Returns a velocity away from [threat] at [speed].
  static Vector2 flee({
    required Vector2 position,
    required Vector2 threat,
    required double speed,
    Vector2? output,
  }) => seek(position: threat, target: position, speed: speed, output: output);

  /// Returns a velocity that slows linearly inside [slowRadius].
  static Vector2 arrive({
    required Vector2 position,
    required Vector2 target,
    required double speed,
    required double slowRadius,
    Vector2? output,
  }) {
    if (slowRadius <= 0) {
      throw ArgumentError.value(slowRadius, 'slowRadius', 'must be positive');
    }
    final velocity = seek(
      position: position,
      target: target,
      speed: speed,
      output: output,
    );
    final distance = target.distanceTo(position);
    if (distance < slowRadius) {
      velocity.scale(distance / slowRadius);
    }
    return velocity;
  }
}
