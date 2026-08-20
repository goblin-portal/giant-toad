<div>

<div>

# <span class="kind-method">shadowRects</span> static method

</div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadShadowRect](../../giant_toad/GiantToadShadowRect-class.md)</span>\></span></span> <span class="name">shadowRects</span>(

1.  <span id="shadowRects-param-shape" class="parameter"><span class="type-annotation">[GiantToadShadowShape](../../giant_toad/GiantToadShadowShape-class.md)</span> <span class="parameter-name">shape</span>, {</span>
2.  <span id="shadowRects-param-options" class="parameter"><span class="type-annotation">[GiantToadShadowOptions](../../giant_toad/GiantToadShadowOptions-class.md)</span> <span class="parameter-name">options</span> = <span class="default-value">const GiantToadShadowOptions()</span>, </span>

})

</div>

<div>

## Implementation

``` dart
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
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadLighting](../../giant_toad/GiantToadLighting-class.md)
4.  shadowRects static method

##### GiantToadLighting class

<div>

</div>

</div>

<div>

</div>
