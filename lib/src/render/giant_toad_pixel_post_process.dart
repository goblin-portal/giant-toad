import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/post_process.dart';
import 'package:flutter/painting.dart';

/// Screen-space pixel light used by [GiantToadLightingPostProcess].
class GiantToadPixelLight {
  const GiantToadPixelLight({
    required this.position,
    required this.radius,
    this.color = const Color(0xffffffff),
    this.intensity = 1,
  });
  final Vector2 position;
  final double radius;
  final Color color;
  final double intensity;
}

/// Flame post-process that preserves a crisp low-resolution presentation.
class GiantToadPixelatePostProcess extends PostProcess {
  GiantToadPixelatePostProcess({required this.pixelScale, super.pixelRatio}) {
    if (pixelScale <= 0) {
      throw ArgumentError.value(pixelScale, 'pixelScale', 'must be positive');
    }
  }

  final int pixelScale;
  final Paint _paint = Paint()
    ..isAntiAlias = false
    ..filterQuality = FilterQuality.none;

  @override
  void postProcess(Vector2 size, Canvas canvas) {
    final source = rasterizeSubtree();
    final lowWidth = (source.width / pixelScale).ceil().clamp(1, source.width);
    final lowHeight = (source.height / pixelScale).ceil().clamp(
      1,
      source.height,
    );
    final recorder = PictureRecorder();
    final lowCanvas = Canvas(recorder);
    lowCanvas.drawImageRect(
      source,
      Rect.fromLTWH(0, 0, source.width.toDouble(), source.height.toDouble()),
      Rect.fromLTWH(0, 0, lowWidth.toDouble(), lowHeight.toDouble()),
      _paint,
    );
    final picture = recorder.endRecording();
    final low = picture.toImageSync(lowWidth, lowHeight);
    picture.dispose();
    source.dispose();
    canvas.drawImageRect(
      low,
      Rect.fromLTWH(0, 0, lowWidth.toDouble(), lowHeight.toDouble()),
      Rect.fromLTWH(0, 0, size.x, size.y),
      _paint,
    );
    low.dispose();
  }
}

/// Lightweight low-resolution lighting convention implemented through Flame's
/// post-process pipeline. Coordinates are in viewport space.
class GiantToadLightingPostProcess extends PostProcess {
  GiantToadLightingPostProcess({
    this.ambient = const Color(0x9900_0000),
    List<GiantToadPixelLight> lights = const [],
    super.pixelRatio,
  }) : lights = List.of(lights);

  Color ambient;
  final List<GiantToadPixelLight> lights;

  @override
  void postProcess(Vector2 size, Canvas canvas) {
    renderSubtree(canvas);
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.x, size.y),
      Paint()..color = ambient,
    );
    for (final light in lights) {
      if (light.radius <= 0 || light.intensity <= 0) continue;
      final alpha = (light.color.a * light.intensity).clamp(0.0, 1.0);
      final color = light.color.withValues(alpha: alpha);
      canvas.drawCircle(
        Offset(light.position.x, light.position.y),
        light.radius,
        Paint()
          ..blendMode = BlendMode.plus
          ..shader = RadialGradient(colors: [color, color.withValues(alpha: 0)])
              .createShader(
                Rect.fromCircle(
                  center: Offset(light.position.x, light.position.y),
                  radius: light.radius,
                ),
              ),
      );
    }
  }
}
