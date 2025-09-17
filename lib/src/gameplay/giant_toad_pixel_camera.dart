import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/components.dart';

/// Pixel-oriented follow policy layered on Flame's CameraComponent/Viewfinder.
class GiantToadPixelCameraController extends Component {
  GiantToadPixelCameraController({
    required this.camera,
    this.target,
    this.followSpeed = 12,
    this.deadzone = Rect.zero,
    this.lookAhead = 0,
    this.worldBounds,
    this.pixelSnap = true,
    this.maxShake = 6,
  }) {
    if (followSpeed < 0 || lookAhead < 0 || maxShake < 0) {
      throw ArgumentError(
        'Camera speed, look-ahead, and shake must be non-negative.',
      );
    }
  }

  final CameraComponent camera;
  PositionComponent? target;
  final double followSpeed;
  final Rect deadzone;
  final double lookAhead;
  final Rect? worldBounds;
  final bool pixelSnap;
  final double maxShake;

  final Vector2 _previousTarget = Vector2.zero();
  final Vector2 _basePosition = Vector2.zero();
  var _hasPrevious = false;
  var _trauma = 0.0;
  var _time = 0.0;

  double get trauma => _trauma;

  void addTrauma(double amount) {
    if (!amount.isFinite || amount < 0) {
      throw ArgumentError.value(
        amount,
        'amount',
        'must be finite and non-negative',
      );
    }
    _trauma = (_trauma + amount).clamp(0, 1);
  }

  @override
  void update(double dt) {
    _time += dt;
    final followed = target;
    if (followed != null) {
      final center = followed.absoluteCenter;
      final velocity = _hasPrevious && dt > 0
          ? (center - _previousTarget) / dt
          : Vector2.zero();
      _previousTarget.setFrom(center);
      _hasPrevious = true;
      final desired = center + (velocity.normalized() * lookAhead);
      final current = camera.viewfinder.position;
      _basePosition.setFrom(current);
      final offset = desired - current;
      final halfWidth = deadzone.width / 2;
      final halfHeight = deadzone.height / 2;
      if (offset.x.abs() > halfWidth) {
        _basePosition.x += offset.x - offset.x.sign * halfWidth;
      }
      if (offset.y.abs() > halfHeight) {
        _basePosition.y += offset.y - offset.y.sign * halfHeight;
      }
      if (followSpeed > 0) {
        final blend = 1 - math.exp(-followSpeed * dt);
        _basePosition.setFrom(current + ((_basePosition - current) * blend));
      }
      _clampToBounds(_basePosition);
    } else {
      _basePosition.setFrom(camera.viewfinder.position);
    }

    final shakeStrength = maxShake * _trauma * _trauma;
    final shake = Vector2(
      math.sin(_time * 73.13) * shakeStrength,
      math.cos(_time * 91.71) * shakeStrength,
    );
    final output = _basePosition + shake;
    if (pixelSnap) {
      output.setValues(output.x.roundToDouble(), output.y.roundToDouble());
    }
    camera.viewfinder.position = output;
    _trauma = math.max(0, _trauma - dt);
  }

  void _clampToBounds(Vector2 position) {
    final bounds = worldBounds;
    if (bounds == null) return;
    final visible = camera.viewport.virtualSize;
    final halfWidth = visible.x / 2;
    final halfHeight = visible.y / 2;
    final minX = bounds.left + halfWidth;
    final maxX = bounds.right - halfWidth;
    final minY = bounds.top + halfHeight;
    final maxY = bounds.bottom - halfHeight;
    position.x = minX > maxX ? bounds.center.dx : position.x.clamp(minX, maxX);
    position.y = minY > maxY ? bounds.center.dy : position.y.clamp(minY, maxY);
  }
}
