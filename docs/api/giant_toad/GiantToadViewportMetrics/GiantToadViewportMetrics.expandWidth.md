<div>

<div>

# <span class="kind-constructor">GiantToadViewportMetrics.expandWidth</span> constructor

</div>

<div>

<span class="name">GiantToadViewportMetrics.expandWidth</span>({

1.  <span id="expandWidth-param-resolution" class="parameter">required <span class="type-annotation">[GiantToadResolution](../../giant_toad/GiantToadResolution-class.md)</span> <span class="parameter-name">resolution</span>, </span>
2.  <span id="expandWidth-param-canvasSize" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">canvasSize</span>, </span>

})

</div>

<div>

Calculates a viewport that preserves logical width and expands vertically.

</div>

<div>

## Implementation

``` dart
factory GiantToadViewportMetrics.expandWidth({
  required GiantToadResolution resolution,
  required Vector2 canvasSize,
}) {
  final rawScale = canvasSize.x / resolution.width;
  final scale = rawScale >= 1 ? rawScale.floorToDouble() : rawScale;
  final size = Vector2(resolution.width * scale, canvasSize.y);
  return GiantToadViewportMetrics._(
    scale: scale,
    size: size,
    offset: Vector2((canvasSize.x - size.x) / 2, 0),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadViewportMetrics](../../giant_toad/GiantToadViewportMetrics-class.md)
4.  GiantToadViewportMetrics.expandWidth factory constructor

##### GiantToadViewportMetrics class

<div>

</div>

</div>

<div>

</div>
