import 'dart:ui';

import 'package:flame/components.dart';

void _validateDeltaTime(double dt) {
  if (dt < 0 || !dt.isFinite) throw ArgumentError.value(dt, 'dt');
}

/// Buffered jump and coyote-time state for deterministic platform controllers.
class GiantToadJumpAssist {
  GiantToadJumpAssist({this.bufferDuration = 0.12, this.coyoteDuration = 0.1}) {
    if (bufferDuration < 0 || coyoteDuration < 0) {
      throw ArgumentError('Jump assist durations must not be negative.');
    }
  }

  final double bufferDuration;
  final double coyoteDuration;
  double _buffer = 0;
  double _coyote = 0;

  bool get buffered => _buffer > 0;
  bool get withinCoyoteTime => _coyote > 0;
  bool get canJump => buffered && withinCoyoteTime;

  void update(double dt, {required bool grounded, required bool jumpPressed}) {
    _validateDeltaTime(dt);
    _buffer = jumpPressed
        ? bufferDuration
        : (_buffer - dt).clamp(0, bufferDuration);
    _coyote = grounded
        ? coyoteDuration
        : (_coyote - dt).clamp(0, coyoteDuration);
  }

  bool consumeJump() {
    if (!canJump) return false;
    _buffer = 0;
    _coyote = 0;
    return true;
  }

  void reset() {
    _buffer = 0;
    _coyote = 0;
  }
}

/// Freezes simulation for a short hit-confirmation interval while allowing UI,
/// flash, audio, and camera systems to keep receiving unscaled time.
class GiantToadHitPause {
  double _remaining = 0;

  bool get active => _remaining > 0;
  double get remaining => _remaining;

  void trigger(double duration) {
    if (duration < 0 || !duration.isFinite) {
      throw ArgumentError.value(duration, 'duration');
    }
    _remaining = duration > _remaining ? duration : _remaining;
  }

  double scale(double dt) {
    _validateDeltaTime(dt);
    if (_remaining <= 0) return dt;
    _remaining = (_remaining - dt).clamp(0, double.infinity);
    return 0;
  }
}

/// Time-based screen flash state suitable for a Flame overlay component.
class GiantToadScreenFlash {
  Color color = const Color(0x00ffffff);
  double _duration = 0;
  double _remaining = 0;

  bool get active => _remaining > 0;
  double get opacity =>
      _duration <= 0 ? 0 : (_remaining / _duration).clamp(0, 1);

  void trigger(Color color, double duration) {
    if (duration <= 0 || !duration.isFinite) {
      throw ArgumentError.value(duration, 'duration', 'must be positive');
    }
    this.color = color;
    _duration = duration;
    _remaining = duration;
  }

  void update(double dt) {
    _validateDeltaTime(dt);
    _remaining = (_remaining - dt).clamp(0, double.infinity);
  }
}

/// World-space floating label with deterministic velocity and lifetime.
class GiantToadFloatingText extends TextComponent {
  GiantToadFloatingText({
    required String text,
    required super.position,
    this.lifetime = 0.7,
    Vector2? velocity,
    super.textRenderer,
    super.priority,
  }) : velocity = velocity ?? Vector2(0, -18),
       super(text: text) {
    if (lifetime <= 0) throw ArgumentError.value(lifetime, 'lifetime');
  }

  final double lifetime;
  final Vector2 velocity;
  double age = 0;

  bool get alive => age < lifetime;

  @override
  void update(double dt) {
    age += dt;
    position.addScaled(velocity, dt);
    if (!alive) removeFromParent();
  }
}
