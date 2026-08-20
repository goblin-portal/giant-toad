<div>

<div>

# <span class="kind-method">render</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">render</span>(

1.  <span id="render-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
void render(Canvas canvas) {
  if (sampling != GiantToadSampling.pixelPerfect) {
    return super.render(canvas);
  }
  final dx = position.x.roundToDouble() - position.x;
  final dy = position.y.roundToDouble() - position.y;
  canvas.save();
  canvas.translate(dx, dy);
  super.render(canvas);
  canvas.restore();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pixel_sprites](../../src_render_giant_toad_pixel_sprites/index.md)
3.  [GiantToadPixelAnimationComponent](../../src_render_giant_toad_pixel_sprites/GiantToadPixelAnimationComponent-class.md)
4.  render method

##### GiantToadPixelAnimationComponent class

<div>

</div>

</div>

<div>

</div>
