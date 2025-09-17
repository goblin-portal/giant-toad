import 'dart:ui';

import 'package:flame/components.dart';

enum GiantToadGridDirection { up, right, down, left }

enum GiantToadGridStepResult { idle, moving, completed, blocked }

class GiantToadGridStepper {
  GiantToadGridStepper({
    required this.cellSize,
    this.duration = const Duration(milliseconds: 150),
  }) : assert(cellSize.x > 0 && cellSize.y > 0),
       assert(duration > Duration.zero);

  final Vector2 cellSize;
  final Duration duration;
  Vector2? _start;
  Vector2? _end;
  double _elapsed = 0;
  GiantToadGridStepResult status = GiantToadGridStepResult.idle;

  bool begin({
    required Rect body,
    required GiantToadGridDirection direction,
    required bool Function(Rect destination) isBlocked,
  }) {
    if (status == GiantToadGridStepResult.moving) return false;
    final delta = switch (direction) {
      GiantToadGridDirection.up => Vector2(0, -cellSize.y),
      GiantToadGridDirection.right => Vector2(cellSize.x, 0),
      GiantToadGridDirection.down => Vector2(0, cellSize.y),
      GiantToadGridDirection.left => Vector2(-cellSize.x, 0),
    };
    final destination = body.shift(Offset(delta.x, delta.y));
    if (isBlocked(destination)) {
      status = GiantToadGridStepResult.blocked;
      return false;
    }
    _start = Vector2(body.left, body.top);
    _end = _start! + delta;
    _elapsed = 0;
    status = GiantToadGridStepResult.moving;
    return true;
  }

  Vector2 update(double dt) {
    if (status != GiantToadGridStepResult.moving) {
      return (_end ?? _start ?? Vector2.zero()).clone();
    }
    _elapsed += dt;
    final seconds = duration.inMicroseconds / Duration.microsecondsPerSecond;
    final t = (_elapsed / seconds).clamp(0.0, 1.0);
    final position = _start! + (_end! - _start!) * t;
    if (t >= 1) {
      position.setValues(
        position.x.roundToDouble(),
        position.y.roundToDouble(),
      );
      status = GiantToadGridStepResult.completed;
    }
    return position;
  }

  void reset() {
    _start = null;
    _end = null;
    _elapsed = 0;
    status = GiantToadGridStepResult.idle;
  }
}
