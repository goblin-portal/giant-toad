<div>

<div>

# <span class="kind-constructor">GiantToadPixelAnimationComponent</span> constructor

</div>

<div>

<span class="name">GiantToadPixelAnimationComponent</span>({

1.  <span id="param-animation" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">animation</span>, </span>
2.  <span id="param-position" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">position</span>, </span>
3.  <span id="param-size" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">size</span>, </span>
4.  <span id="param-anchor" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">anchor</span>, </span>
5.  <span id="param-angle" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">angle</span>, </span>
6.  <span id="param-priority" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">priority</span>, </span>
7.  <span id="param-key" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">key</span>, </span>
8.  <span id="param-sampling" class="parameter"><span class="type-annotation">[GiantToadSampling](../../src_render_giant_toad_pixel_sprites/GiantToadSampling.md)</span> <span class="parameter-name">sampling</span> = <span class="default-value">GiantToadSampling.pixelPerfect</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadPixelAnimationComponent({
  super.animation,
  super.position,
  super.size,
  super.anchor,
  super.angle,
  super.priority,
  super.key,
  this.sampling = GiantToadSampling.pixelPerfect,
}) {
  configureSampling(sampling);
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
4.  GiantToadPixelAnimationComponent.new constructor

##### GiantToadPixelAnimationComponent class

<div>

</div>

</div>

<div>

</div>
