<div>

<div>

# <span class="kind-method">transformCanvas</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">transformCanvas</span>(

1.  <span id="transformCanvas-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
void transformCanvas(Canvas canvas) {
  canvas.translate(size.x / 2, size.y / 2);
  canvas.scale(metrics.scale);
  canvas.translate(
    -(size.x / 2) / metrics.scale,
    -(size.y / 2) / metrics.scale,
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
3.  [GiantToadPixelViewport](../../src_giant_toad_pixel_viewport/GiantToadPixelViewport-class.md)
4.  transformCanvas method

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
