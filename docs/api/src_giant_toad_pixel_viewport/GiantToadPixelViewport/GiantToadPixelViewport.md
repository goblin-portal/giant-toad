<div>

<div>

# <span class="kind-constructor">GiantToadPixelViewport</span> constructor

</div>

<div>

<span class="name">GiantToadPixelViewport</span>({

1.  <span id="param-resolution" class="parameter">required <span class="type-annotation">[GiantToadResolution](../../src_giant_toad_resolution/GiantToadResolution-class.md)</span> <span class="parameter-name">resolution</span>, </span>
2.  <span id="param-mode" class="parameter"><span class="type-annotation">[GiantToadViewportMode](../../src_giant_toad_pixel_viewport/GiantToadViewportMode.md)</span> <span class="parameter-name">mode</span> = <span class="default-value">GiantToadViewportMode.fixed</span>, </span>
3.  <span id="param-pixelScale" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">pixelScale</span> = <span class="default-value">2</span>, </span>
4.  <span id="param-children" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">children</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadPixelViewport({
  required this.resolution,
  this.mode = GiantToadViewportMode.fixed,
  this.pixelScale = 2,
  super.children,
}) : assert(pixelScale > 0);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pixel_viewport](../../src_giant_toad_pixel_viewport/index.md)
3.  [GiantToadPixelViewport](../../src_giant_toad_pixel_viewport/GiantToadPixelViewport-class.md)
4.  GiantToadPixelViewport.new constructor

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
