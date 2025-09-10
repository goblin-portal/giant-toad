import 'dart:math' as math;
import 'dart:ui';

class GiantToadShadowPoint {
  const GiantToadShadowPoint(this.x, this.y);
  final double x;
  final double y;
}

class GiantToadShadowShape {
  const GiantToadShadowShape({
    this.kind = 'box',
    required this.x,
    required this.y,
    this.width = 0,
    this.height = 0,
    this.radius = 0,
    this.rotation = 0,
    this.scaleX = 1,
    this.scaleY = 1,
    this.flipX = false,
    this.flipY = false,
    this.enabled = true,
    this.points = const [],
    this.heightFromGround = 8,
    this.opacity = 110,
    this.softness = 0,
    this.pixelSize = 1,
  });

  final String kind;
  final double x;
  final double y;
  final double width;
  final double height;
  final double radius;
  final double rotation;
  final double scaleX;
  final double scaleY;
  final bool flipX;
  final bool flipY;
  final bool enabled;
  final List<GiantToadShadowPoint> points;
  final double heightFromGround;
  final double opacity;
  final double softness;
  final int pixelSize;
}

class GiantToadShadowOptions {
  const GiantToadShadowOptions({
    this.height = 0,
    this.directionX = 0,
    this.directionY = 0,
    this.opacity = 0,
    this.softness = 0,
    this.pixelSize = 0,
    this.color = const Color(0xff080c12),
    this.smoothFallback = false,
  });

  final double height;
  final double directionX;
  final double directionY;
  final double opacity;
  final double softness;
  final int pixelSize;
  final Color color;
  final bool smoothFallback;
}

class GiantToadShadowRect {
  const GiantToadShadowRect(this.rect, this.color);
  final Rect rect;
  final Color color;
}

class GiantToadShadowTriangle {
  const GiantToadShadowTriangle(this.a, this.b, this.c, this.color);
  final Offset a;
  final Offset b;
  final Offset c;
  final Color color;
}

/// Deterministic pixel-art cast-shadow geometry.
abstract final class GiantToadLighting {
  static List<GiantToadShadowRect> dropShadowRects(
    GiantToadShadowShape shape, {
    GiantToadShadowOptions options = const GiantToadShadowOptions(),
  }) {
    if (!shape.enabled) return const [];
    final pixel = math.max(
      1,
      options.pixelSize > 0 ? options.pixelSize : math.max(1, shape.pixelSize),
    );
    final opacity = (options.opacity > 0 ? options.opacity : shape.opacity)
        .clamp(0.0, 255.0)
        .floor();
    if (opacity <= 0) return const [];
    final result = <GiantToadShadowRect>[];
    _addPixelSilhouette(
      result,
      shape,
      _snapped(shape.x, pixel),
      _snapped(shape.y, pixel),
      pixel,
      options.color.withAlpha(opacity),
    );
    return result;
  }

  static List<GiantToadShadowRect> shadowRects(
    GiantToadShadowShape shape, {
    GiantToadShadowOptions options = const GiantToadShadowOptions(),
  }) {
    if (!shape.enabled) return const [];
    final pixel = math.max(
      1,
      options.pixelSize > 0 ? options.pixelSize : math.max(1, shape.pixelSize),
    );
    final height = math.max(
      0.0,
      options.height > 0 ? options.height : shape.heightFromGround,
    );
    var directionX = options.directionX;
    var directionY = options.directionY;
    if (directionX == 0 && directionY == 0) {
      directionX = 0.7;
      directionY = 0.7;
    }
    final magnitude = math.sqrt(
      directionX * directionX + directionY * directionY,
    );
    if (magnitude < 0.0001) return const [];
    final dx = directionX / magnitude * height;
    final dy = directionY / magnitude * height;
    final softness = math.max(
      0,
      (options.softness > 0 ? options.softness : shape.softness).floor(),
    );
    final passes = math.max(1, softness + 1);
    final steps = math.max(1, (height / pixel).ceil());
    final opacity = (options.opacity > 0 ? options.opacity : shape.opacity)
        .clamp(0.0, 255.0);
    final result = <GiantToadShadowRect>[];
    for (var step = steps; step >= 1; step--) {
      final t = step / steps;
      final fade = (1 - t) * (1 - t) * (steps > 1 ? 3 / steps : 1);
      for (var pass = passes; pass >= 1; pass--) {
        final spread = (pass - 1) * pixel;
        final alpha = (opacity * fade / passes).floor();
        if (alpha <= 0) continue;
        final x = _snapped(shape.x + dx * t, pixel) + spread;
        final y = _snapped(shape.y + dy * t, pixel) + spread;
        _addPixelSilhouette(
          result,
          shape,
          x,
          y,
          pixel,
          options.color.withAlpha(alpha.clamp(0, 255)),
        );
      }
    }
    return result;
  }

  static List<GiantToadShadowTriangle> shadowTriangles(
    GiantToadShadowShape shape, {
    GiantToadShadowOptions options = const GiantToadShadowOptions(),
  }) {
    if (!shape.enabled) return const [];
    final height = math.max(
      0.0,
      options.height > 0 ? options.height : shape.heightFromGround,
    );
    var directionX = options.directionX;
    var directionY = options.directionY;
    if (directionX == 0 && directionY == 0) {
      directionX = .7;
      directionY = .7;
    }
    final magnitude = math.sqrt(
      directionX * directionX + directionY * directionY,
    );
    if (magnitude < .0001) return const [];
    final dx = directionX / magnitude * height;
    final dy = directionY / magnitude * height;
    final points = <Offset>[];
    if (shape.kind == 'circle') {
      for (var index = 0; index < 20; index++) {
        final angle = index * math.pi * 2 / 20;
        points.add(
          Offset(
            shape.x + math.cos(angle) * shape.radius,
            shape.y + math.sin(angle) * shape.radius,
          ),
        );
      }
    } else if (shape.kind == 'polygon' && shape.points.length >= 3) {
      final sx =
          (shape.scaleX == 0 ? 1.0 : shape.scaleX) * (shape.flipX ? -1 : 1);
      final sy =
          (shape.scaleY == 0 ? 1.0 : shape.scaleY) * (shape.flipY ? -1 : 1);
      final radians = shape.rotation * math.pi / 180;
      for (final point in shape.points) {
        points.add(
          Offset(
            shape.x +
                point.x * sx * math.cos(radians) -
                point.y * sy * math.sin(radians),
            shape.y +
                point.x * sx * math.sin(radians) +
                point.y * sy * math.cos(radians),
          ),
        );
      }
    } else {
      final radians = shape.rotation * math.pi / 180;
      final ux = math.cos(radians);
      final uy = math.sin(radians);
      final vx = -uy;
      final vy = ux;
      for (final point in [
        Offset.zero,
        Offset(shape.width, 0),
        Offset(shape.width, shape.height),
        Offset(0, shape.height),
      ]) {
        points.add(
          Offset(
            shape.x + ux * point.dx + vx * point.dy,
            shape.y + uy * point.dx + vy * point.dy,
          ),
        );
      }
    }
    if (points.length < 3) return const [];
    final center = points.reduce((a, b) => a + b) / points.length.toDouble();
    final farCenter = center + Offset(dx, dy);
    final opacity = (options.opacity > 0 ? options.opacity : shape.opacity)
        .round()
        .clamp(0, 255);
    final shade = options.color.withAlpha(opacity);
    final result = <GiantToadShadowTriangle>[];
    for (var index = 0; index < points.length; index++) {
      final point = points[index];
      final next = points[(index + 1) % points.length];
      final far = point + Offset(dx, dy);
      final nextFar = next + Offset(dx, dy);
      result
        ..add(GiantToadShadowTriangle(point, next, nextFar, shade))
        ..add(GiantToadShadowTriangle(point, nextFar, far, shade))
        ..add(GiantToadShadowTriangle(center, point, next, shade))
        ..add(GiantToadShadowTriangle(farCenter, nextFar, far, shade));
    }
    return result;
  }

  static int _snapped(double value, int pixel) =>
      (value / pixel).round() * pixel;

  static void _addPixelSilhouette(
    List<GiantToadShadowRect> result,
    GiantToadShadowShape shape,
    int x,
    int y,
    int pixel,
    Color shade,
  ) {
    if (shape.kind == 'polygon') {
      _addPolygonSilhouette(result, shape, x, y, pixel, shade);
      return;
    }
    final sx = shape.scaleX == 0 ? 1.0 : shape.scaleX.abs();
    final sy = shape.scaleY == 0 ? 1.0 : shape.scaleY.abs();
    final width = math.max(
      pixel,
      _snapped(
        (shape.kind == 'circle' ? shape.radius * 2 : shape.width) * sx,
        pixel,
      ),
    );
    final height = math.max(
      pixel,
      _snapped(
        (shape.kind == 'circle' ? shape.radius * 2 : shape.height) * sy,
        pixel,
      ),
    );
    final left = shape.kind == 'circle' ? x - width ~/ 2 : x;
    final top = shape.kind == 'circle' ? y - height ~/ 2 : y;
    if (shape.kind != 'circle' &&
        shape.kind != 'oval' &&
        shape.kind != 'diamond') {
      result.add(
        GiantToadShadowRect(
          Rect.fromLTWH(
            left.toDouble(),
            top.toDouble(),
            width.toDouble(),
            height.toDouble(),
          ),
          shade,
        ),
      );
      return;
    }
    final rows = math.max(1, (height / pixel).ceil());
    for (var row = 0; row < rows; row++) {
      final relative =
          (row * pixel + pixel / 2 - height / 2) /
          math.max(pixel / 2, height / 2);
      final factor = shape.kind == 'oval' || shape.kind == 'circle'
          ? math.sqrt(math.max(0.0, 1 - relative * relative))
          : math.max(0.0, 1 - relative.abs());
      final bandWidth = math.max(pixel, _snapped(width * factor, pixel));
      result.add(
        GiantToadShadowRect(
          Rect.fromLTWH(
            (left + (width - bandWidth) ~/ 2).toDouble(),
            (top + row * pixel).toDouble(),
            bandWidth.toDouble(),
            pixel.toDouble(),
          ),
          shade,
        ),
      );
    }
  }

  static void _addPolygonSilhouette(
    List<GiantToadShadowRect> result,
    GiantToadShadowShape shape,
    int x,
    int y,
    int pixel,
    Color shade,
  ) {
    if (shape.points.length < 3) return;
    final sx =
        (shape.scaleX == 0 ? 1.0 : shape.scaleX) * (shape.flipX ? -1 : 1);
    final sy =
        (shape.scaleY == 0 ? 1.0 : shape.scaleY) * (shape.flipY ? -1 : 1);
    final radians = shape.rotation * math.pi / 180;
    final points = [
      for (final point in shape.points)
        Offset(
          x +
              point.x * sx * math.cos(radians) -
              point.y * sy * math.sin(radians),
          y +
              point.x * sx * math.sin(radians) +
              point.y * sy * math.cos(radians),
        ),
    ];
    final minY = points.map((point) => point.dy).reduce(math.min);
    final maxY = points.map((point) => point.dy).reduce(math.max);
    for (
      var scanY = _snapped(minY, pixel);
      scanY <= maxY.ceil();
      scanY += pixel
    ) {
      final sampleY = scanY + pixel / 2;
      final intersections = <double>[];
      for (var index = 0; index < points.length; index++) {
        final first = points[index];
        final second = points[(index + 1) % points.length];
        if ((first.dy <= sampleY && second.dy > sampleY) ||
            (second.dy <= sampleY && first.dy > sampleY)) {
          intersections.add(
            first.dx +
                (sampleY - first.dy) *
                    (second.dx - first.dx) /
                    (second.dy - first.dy),
          );
        }
      }
      intersections.sort();
      for (var index = 0; index + 1 < intersections.length; index += 2) {
        final left = _snapped(intersections[index], pixel);
        final right = _snapped(intersections[index + 1], pixel);
        result.add(
          GiantToadShadowRect(
            Rect.fromLTWH(
              math.min(left, right).toDouble(),
              scanY.toDouble(),
              math.max(pixel, (right - left).abs()).toDouble(),
              pixel.toDouble(),
            ),
            shade,
          ),
        );
      }
    }
  }
}
