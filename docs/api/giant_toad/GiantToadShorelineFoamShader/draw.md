<div>

<div>

# <span class="kind-method">draw</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">draw</span>(

1.  <span id="draw-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span>, </span>
2.  <span id="draw-param-bounds" class="parameter"><span class="type-annotation">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> <span class="parameter-name">bounds</span>, {</span>
3.  <span id="draw-param-time" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">time</span>, </span>
4.  <span id="draw-param-edgeMask" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">edgeMask</span>, </span>
5.  <span id="draw-param-cellX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">cellX</span>, </span>
6.  <span id="draw-param-cellY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">cellY</span>, </span>
7.  <span id="draw-param-speed" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span> = <span class="default-value">1</span>, </span>
8.  <span id="draw-param-width" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">width</span> = <span class="default-value">.08</span>, </span>
9.  <span id="draw-param-opacity" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">opacity</span> = <span class="default-value">.6</span>, </span>
10. <span id="draw-param-color" class="parameter"><span class="type-annotation">[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span> <span class="parameter-name">color</span> = <span class="default-value">const Color(0xffd8f5ff)</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void draw(
  Canvas canvas,
  Rect bounds, {
  required double time,
  required int edgeMask,
  required int cellX,
  required int cellY,
  double speed = 1,
  double width = .08,
  double opacity = .6,
  Color color = const Color(0xffd8f5ff),
}) {
  if (bounds.isEmpty || edgeMask == 0) return;
  final shader = program.fragmentShader()
    ..setFloat(0, bounds.width)
    ..setFloat(1, bounds.height)
    ..setFloat(2, time)
    ..setFloat(3, speed.clamp(0, 8))
    ..setFloat(4, width.clamp(.015, .48))
    ..setFloat(5, opacity.clamp(0, 1))
    ..setFloat(6, color.r)
    ..setFloat(7, color.g)
    ..setFloat(8, color.b)
    ..setFloat(9, edgeMask.toDouble())
    ..setFloat(10, cellX.toDouble())
    ..setFloat(11, cellY.toDouble());
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
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadShorelineFoamShader](../../giant_toad/GiantToadShorelineFoamShader-class.md)
4.  draw method

##### GiantToadShorelineFoamShader class

<div>

</div>

</div>

<div>

</div>
