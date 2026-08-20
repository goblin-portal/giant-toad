<div>

<div>

# <span class="kind-method">shadowTriangles</span> static method

</div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadShadowTriangle](../../giant_toad/GiantToadShadowTriangle-class.md)</span>\></span></span> <span class="name">shadowTriangles</span>(

1.  <span id="shadowTriangles-param-shape" class="parameter"><span class="type-annotation">[GiantToadShadowShape](../../giant_toad/GiantToadShadowShape-class.md)</span> <span class="parameter-name">shape</span>, {</span>
2.  <span id="shadowTriangles-param-options" class="parameter"><span class="type-annotation">[GiantToadShadowOptions](../../giant_toad/GiantToadShadowOptions-class.md)</span> <span class="parameter-name">options</span> = <span class="default-value">const GiantToadShadowOptions()</span>, </span>

})

</div>

<div>

## Implementation

``` dart
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
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadLighting](../../giant_toad/GiantToadLighting-class.md)
4.  shadowTriangles static method

##### GiantToadLighting class

<div>

</div>

</div>

<div>

</div>
