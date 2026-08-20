<div>

<div>

# <span class="kind-method">onGameResize</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onGameResize</span>(

1.  <span id="onGameResize-param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">size</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

Called whenever the size of the top-level Canvas changes.

In addition, this method will be invoked before each [onMount](https://pub.dev/documentation/flame/1.38.0/components/Component/onMount.md).

</div>

<div>

## Implementation

``` dart
@override
void onGameResize(Vector2 size) {
  super.onGameResize(size);
  metrics = switch (mode) {
    GiantToadViewportMode.fixed => GiantToadViewportMetrics.fit(
      resolution: resolution,
      canvasSize: size,
    ),
    GiantToadViewportMode.expand => GiantToadViewportMetrics.expand(
      canvasSize: size,
      pixelScale: pixelScale,
    ),
    GiantToadViewportMode.expandWidth => GiantToadViewportMetrics.expandWidth(
      resolution: resolution,
      canvasSize: size,
    ),
  };
  _virtualSizeOrNull = switch (mode) {
    GiantToadViewportMode.fixed => Vector2(
      resolution.width,
      resolution.height,
    ),
    GiantToadViewportMode.expand => Vector2(
      size.x / metrics.scale,
      size.y / metrics.scale,
    ),
    GiantToadViewportMode.expandWidth => Vector2(
      resolution.width,
      size.y / metrics.scale,
    ),
  };
  this.size = metrics.size;
  position = metrics.offset;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelViewport](../../giant_toad/GiantToadPixelViewport-class.md)
4.  onGameResize method

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
