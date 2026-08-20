<div>

<div>

# <span class="kind-constructor">GiantToadGame\<<span class="type-parameter">W extends dynamic</span>\></span> constructor

</div>

<div>

<span class="name">GiantToadGame\<<span class="type-parameter">W extends dynamic</span>\></span>({

1.  <span id="param-world" class="parameter">required <span class="type-annotation">W</span> <span class="parameter-name">world</span>, </span>
2.  <span id="param-resolution" class="parameter"><span class="type-annotation">[GiantToadResolution](../../src_giant_toad_resolution/GiantToadResolution-class.md)?</span> <span class="parameter-name">resolution</span>, </span>
3.  <span id="param-viewportMode" class="parameter"><span class="type-annotation">[GiantToadViewportMode](../../src_giant_toad_pixel_viewport/GiantToadViewportMode.md)</span> <span class="parameter-name">viewportMode</span> = <span class="default-value">GiantToadViewportMode.expand</span>, </span>
4.  <span id="param-pixelScale" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">pixelScale</span> = <span class="default-value">2</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadGame({
  required W world,
  GiantToadResolution? resolution,
  this.viewportMode = GiantToadViewportMode.expand,
  this.pixelScale = 2,
}) : assert(pixelScale > 0),
     resolution = resolution ?? defaultResolution,
     super(
       world: world,
       camera: CameraComponent(
         viewport: GiantToadPixelViewport(
           resolution: resolution ?? defaultResolution,
           mode: viewportMode,
           pixelScale: pixelScale,
         ),
       ),
     ) {
  camera.viewfinder.position = Vector2(
    this.resolution.width / 2,
    this.resolution.height / 2,
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_game](../../src_giant_toad_game/index.md)
3.  [GiantToadGame<span class="signature">\<<span class="type-parameter">W extends dynamic</span>\></span>](../../src_giant_toad_game/GiantToadGame-class.md)
4.  GiantToadGame.new constructor

##### GiantToadGame class

<div>

</div>

</div>

<div>

</div>
