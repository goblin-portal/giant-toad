<div>

<div>

# <span class="kind-method">flee</span> static method

</div>

<div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="name">flee</span>({

1.  <span id="flee-param-position" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">position</span>, </span>
2.  <span id="flee-param-threat" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">threat</span>, </span>
3.  <span id="flee-param-speed" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span>, </span>
4.  <span id="flee-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span>, </span>

})

</div>

<div>

Returns a velocity away from `threat` at `speed`.

</div>

<div>

## Implementation

``` dart
static Vector2 flee({
  required Vector2 position,
  required Vector2 threat,
  required double speed,
  Vector2? output,
}) => seek(position: threat, target: position, speed: speed, output: output);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadSteering](../../giant_toad/GiantToadSteering-class.md)
4.  flee static method

##### GiantToadSteering class

<div>

</div>

</div>

<div>

</div>
