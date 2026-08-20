<div>

<div>

# <span class="kind-method">draw</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">draw</span>(

1.  <span id="draw-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span>, </span>
2.  <span id="draw-param-bounds" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">bounds</span>, {</span>
3.  <span id="draw-param-time" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">time</span>, </span>
4.  <span id="draw-param-intensity" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">intensity</span> = <span class="default-value">1</span>, </span>
5.  <span id="draw-param-speed" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span> = <span class="default-value">1</span>, </span>
6.  <span id="draw-param-color" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">color</span> = <span class="default-value">const Color(0xffff5c14)</span>, </span>
7.  <span id="draw-param-blendMode" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">blendMode</span> = <span class="default-value">BlendMode.srcOver</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void draw(
  Canvas canvas,
  Rect bounds, {
  required double time,
  double intensity = 1,
  double speed = 1,
  Color color = const Color(0xffff5c14),
  BlendMode blendMode = BlendMode.srcOver,
}) {
  if (bounds.isEmpty) return;
  canvas.save();
  canvas.translate(bounds.left, bounds.top);
  canvas.drawRect(
    Offset.zero & bounds.size,
    Paint()
      ..blendMode = blendMode
      ..shader = create(
        size: bounds.size,
        time: time,
        intensity: intensity,
        speed: speed,
        color: color,
      ),
  );
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
3.  [GiantToadLavaSurfaceShader](../../src_render_giant_toad_surface_shaders/GiantToadLavaSurfaceShader-class.md)
4.  draw method

##### GiantToadLavaSurfaceShader class

<div>

</div>

</div>

<div>

</div>
