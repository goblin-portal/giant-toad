import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/components.dart';

enum GiantToadLightShape { circle, cone }

class GiantToadAmbientLight {
  const GiantToadAmbientLight({
    required this.position,
    required this.radius,
    this.color = const Color(0x00ffffff),
    this.shape = GiantToadLightShape.circle,
    this.direction = 0,
    this.coneAngle = math.pi / 2,
    this.enabled = true,
  });
  final Offset position;
  final double radius;
  final Color color;
  final GiantToadLightShape shape;
  final double direction;
  final double coneAngle;
  final bool enabled;
}

/// Pixel-safe ambient mask. Mount in a camera viewport and supply positions in
/// that component's local coordinate space.
class GiantToadAmbientLightComponent extends PositionComponent {
  GiantToadAmbientLightComponent({
    required super.size,
    this.ambientColor = const Color(0xaa000000),
    this.pixelSize = 1,
    Iterable<GiantToadAmbientLight> lights = const [],
    super.priority = 0x7ffffffd,
  }) : lights = List.of(lights);

  Color ambientColor;
  final int pixelSize;
  final List<GiantToadAmbientLight> lights;
  final Paint _clear = Paint()
    ..blendMode = BlendMode.clear
    ..isAntiAlias = false;

  Offset _snap(Offset point) => Offset(
    (point.dx / pixelSize).round() * pixelSize.toDouble(),
    (point.dy / pixelSize).round() * pixelSize.toDouble(),
  );

  @override
  void render(Canvas canvas) {
    if (ambientColor.a == 0 || size.isZero()) return;
    final bounds = Offset.zero & Size(size.x, size.y);
    canvas.saveLayer(bounds, Paint());
    canvas.drawRect(bounds, Paint()..color = ambientColor);
    for (final light in lights) {
      if (!light.enabled || light.radius <= 0) continue;
      final position = _snap(light.position);
      final radius = (light.radius / pixelSize).round() * pixelSize.toDouble();
      switch (light.shape) {
        case GiantToadLightShape.circle:
          canvas.drawCircle(position, radius, _clear);
        case GiantToadLightShape.cone:
          canvas.drawPath(
            Path()
              ..moveTo(position.dx, position.dy)
              ..arcTo(
                Rect.fromCircle(center: position, radius: radius),
                light.direction - light.coneAngle / 2,
                light.coneAngle,
                false,
              )
              ..close(),
            _clear,
          );
      }
      if (light.color.a > 0) {
        canvas.drawCircle(position, radius, Paint()..color = light.color);
      }
    }
    canvas.restore();
  }
}
