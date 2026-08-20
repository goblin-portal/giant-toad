<div>

<div>

# <span class="kind-method">draw</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">draw</span>(

1.  <span id="draw-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span>, </span>
2.  <span id="draw-param-bounds" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">bounds</span>, {</span>
3.  <span id="draw-param-time" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">time</span>, </span>
4.  <span id="draw-param-cellX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">cellX</span>, </span>
5.  <span id="draw-param-cellY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">cellY</span>, </span>
6.  <span id="draw-param-intensity" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">intensity</span> = <span class="default-value">1</span>, </span>
7.  <span id="draw-param-speed" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span> = <span class="default-value">1</span>, </span>
8.  <span id="draw-param-strength" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">strength</span> = <span class="default-value">.55</span>, </span>
9.  <span id="draw-param-directionX" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">directionX</span> = <span class="default-value">1</span>, </span>
10. <span id="draw-param-directionY" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">directionY</span> = <span class="default-value">0</span>, </span>
11. <span id="draw-param-color" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">color</span> = <span class="default-value">const Color(0xff96e1ff)</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void draw(
  Canvas canvas,
  Rect bounds, {
  required double time,
  required int cellX,
  required int cellY,
  double intensity = 1,
  double speed = 1,
  double strength = .55,
  double directionX = 1,
  double directionY = 0,
  Color color = const Color(0xff96e1ff),
}) {
  if (bounds.isEmpty) return;
  final shader = program.fragmentShader()
    ..setFloat(0, bounds.width)
    ..setFloat(1, bounds.height)
    ..setFloat(2, time)
    ..setFloat(3, intensity.clamp(0, 2))
    ..setFloat(4, speed.clamp(0, 8))
    ..setFloat(5, strength.clamp(0, 2))
    ..setFloat(6, color.r)
    ..setFloat(7, color.g)
    ..setFloat(8, color.b)
    ..setFloat(9, cellX.toDouble())
    ..setFloat(10, cellY.toDouble())
    ..setFloat(11, directionX)
    ..setFloat(12, directionY);
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
3.  [GiantToadWaterSurfaceShader](../../src_render_giant_toad_surface_shaders/GiantToadWaterSurfaceShader-class.md)
4.  draw method

##### GiantToadWaterSurfaceShader class

<div>

</div>

</div>

<div>

</div>
