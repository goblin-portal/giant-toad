<div>

<div>

# <span class="kind-method">dropShadowRects</span> static method

</div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadShadowRect](../../giant_toad/GiantToadShadowRect-class.md)</span>\></span></span> <span class="name">dropShadowRects</span>(

1.  <span id="dropShadowRects-param-shape" class="parameter"><span class="type-annotation">[GiantToadShadowShape](../../giant_toad/GiantToadShadowShape-class.md)</span> <span class="parameter-name">shape</span>, {</span>
2.  <span id="dropShadowRects-param-options" class="parameter"><span class="type-annotation">[GiantToadShadowOptions](../../giant_toad/GiantToadShadowOptions-class.md)</span> <span class="parameter-name">options</span> = <span class="default-value">const GiantToadShadowOptions()</span>, </span>

})

</div>

<div>

## Implementation

``` dart
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
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadLighting](../../giant_toad/GiantToadLighting-class.md)
4.  dropShadowRects static method

##### GiantToadLighting class

<div>

</div>

</div>

<div>

</div>
