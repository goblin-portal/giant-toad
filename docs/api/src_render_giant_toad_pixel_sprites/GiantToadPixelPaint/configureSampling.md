<div>

<div>

# <span class="kind-method">configureSampling</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">configureSampling</span>(

1.  <span id="configureSampling-param-sampling" class="parameter"><span class="type-annotation">[GiantToadSampling](../../src_render_giant_toad_pixel_sprites/GiantToadSampling.md)</span> <span class="parameter-name">sampling</span></span>

)

</div>

<div>

## Implementation

``` dart
void configureSampling(GiantToadSampling sampling) {
  switch (sampling) {
    case GiantToadSampling.pixelPerfect:
    case GiantToadSampling.crispTransform:
      paint
        ..isAntiAlias = false
        ..filterQuality = FilterQuality.none;
    case GiantToadSampling.smooth:
      paint
        ..isAntiAlias = true
        ..filterQuality = FilterQuality.medium;
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pixel_sprites](../../src_render_giant_toad_pixel_sprites/index.md)
3.  [GiantToadPixelPaint](../../src_render_giant_toad_pixel_sprites/GiantToadPixelPaint-mixin.md)
4.  configureSampling method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
