<div>

<div>

# <span class="kind-method">create</span> method

</div>

<div>

<span class="returntype">[FragmentShader](https://api.flutter.dev/flutter/dart-ui/FragmentShader-class.md)</span> <span class="name">create</span>({

1.  <span id="create-param-size" class="parameter">required <span class="type-annotation">[Size](https://api.flutter.dev/flutter/dart-ui/Size-class.md)</span> <span class="parameter-name">size</span>, </span>
2.  <span id="create-param-time" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">time</span>, </span>
3.  <span id="create-param-intensity" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">intensity</span> = <span class="default-value">1</span>, </span>
4.  <span id="create-param-speed" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span> = <span class="default-value">1</span>, </span>
5.  <span id="create-param-color" class="parameter"><span class="type-annotation">[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span> <span class="parameter-name">color</span> = <span class="default-value">const Color(0xffff5c14)</span>, </span>

})

</div>

<div>

## Implementation

``` dart
FragmentShader create({
  required Size size,
  required double time,
  double intensity = 1,
  double speed = 1,
  Color color = const Color(0xffff5c14),
}) {
  final shader = program.fragmentShader();
  shader
    ..setFloat(0, size.width)
    ..setFloat(1, size.height)
    ..setFloat(2, time)
    ..setFloat(3, intensity.clamp(0, 2))
    ..setFloat(4, speed.clamp(0, 8))
    ..setFloat(5, color.r)
    ..setFloat(6, color.g)
    ..setFloat(7, color.b);
  return shader;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadLavaSurfaceShader](../../giant_toad/GiantToadLavaSurfaceShader-class.md)
4.  create method

##### GiantToadLavaSurfaceShader class

<div>

</div>

</div>

<div>

</div>
