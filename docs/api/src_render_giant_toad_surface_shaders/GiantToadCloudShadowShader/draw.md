<div>

<div>

# <span class="kind-method">draw</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">draw</span>(

1.  <span id="draw-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span>, </span>
2.  <span id="draw-param-bounds" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">bounds</span>, {</span>
3.  <span id="draw-param-time" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">time</span>, </span>
4.  <span id="draw-param-cameraOffset" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">cameraOffset</span>, </span>
5.  <span id="draw-param-zoom" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">zoom</span>, </span>
6.  <span id="draw-param-density" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">density</span> = <span class="default-value">.66</span>, </span>
7.  <span id="draw-param-opacity" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">opacity</span> = <span class="default-value">.11</span>, </span>
8.  <span id="draw-param-drift" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">drift</span> = <span class="default-value">const Offset(.25, .1)</span>, </span>
9.  <span id="draw-param-color" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">color</span> = <span class="default-value">const Color(0xff0e141c)</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void draw(
  Canvas canvas,
  Rect bounds, {
  required double time,
  required Offset cameraOffset,
  required double zoom,
  double density = .66,
  double opacity = .11,
  Offset drift = const Offset(.25, .1),
  Color color = const Color(0xff0e141c),
}) {
  if (bounds.isEmpty) return;
  final shader = program.fragmentShader()
    ..setFloat(0, bounds.width)
    ..setFloat(1, bounds.height)
    ..setFloat(2, time)
    ..setFloat(3, cameraOffset.dx - bounds.left)
    ..setFloat(4, cameraOffset.dy - bounds.top)
    ..setFloat(5, zoom.clamp(.01, 128))
    ..setFloat(6, density.clamp(0, 1))
    ..setFloat(7, opacity.clamp(0, .35))
    ..setFloat(8, drift.dx)
    ..setFloat(9, drift.dy)
    ..setFloat(10, color.r)
    ..setFloat(11, color.g)
    ..setFloat(12, color.b);
  canvas.save();
  canvas.translate(bounds.left, bounds.top);
  canvas.drawRect(Offset.zero & bounds.size, Paint()..shader = shader);
  canvas.restore();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_surface_shaders](../../src_render_giant_toad_surface_shaders/index.md)
3.  [GiantToadCloudShadowShader](../../src_render_giant_toad_surface_shaders/GiantToadCloudShadowShader-class.md)
4.  draw method

##### GiantToadCloudShadowShader class

<div>

</div>

</div>

<div>

</div>
