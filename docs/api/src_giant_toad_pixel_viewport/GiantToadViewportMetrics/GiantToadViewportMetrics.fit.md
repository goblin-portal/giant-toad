<div>

<div>

# <span class="kind-constructor">GiantToadViewportMetrics.fit</span> constructor

</div>

<div>

<span class="name">GiantToadViewportMetrics.fit</span>({

1.  <span id="fit-param-resolution" class="parameter">required <span class="type-annotation">[GiantToadResolution](../../src_giant_toad_resolution/GiantToadResolution-class.md)</span> <span class="parameter-name">resolution</span>, </span>
2.  <span id="fit-param-canvasSize" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">canvasSize</span>, </span>

})

</div>

<div>

Calculates the largest integer scale that fits `resolution` in `canvasSize`, centering the remaining space as letterboxing.

When the canvas is smaller than the logical resolution, the canvas is scaled down just enough to remain visible. Integer upscaling resumes as soon as the canvas can fit the logical resolution at 1x.

</div>

<div>

## Implementation

``` dart
factory GiantToadViewportMetrics.fit({
  required GiantToadResolution resolution,
  required Vector2 canvasSize,
}) {
  final rawScale = math.min(
    canvasSize.x / resolution.width,
    canvasSize.y / resolution.height,
  );
  final scale = rawScale >= 1 ? rawScale.floorToDouble() : rawScale;
  final size = Vector2(resolution.width * scale, resolution.height * scale);

  return GiantToadViewportMetrics._(
    scale: scale,
    size: size,
    offset: Vector2((canvasSize.x - size.x) / 2, (canvasSize.y - size.y) / 2),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pixel_viewport](../../src_giant_toad_pixel_viewport/index.md)
3.  [GiantToadViewportMetrics](../../src_giant_toad_pixel_viewport/GiantToadViewportMetrics-class.md)
4.  GiantToadViewportMetrics.fit factory constructor

##### GiantToadViewportMetrics class

<div>

</div>

</div>

<div>

</div>
