<div>

<div>

# <span class="kind-method">seek</span> static method

</div>

<div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="name">seek</span>({

1.  <span id="seek-param-position" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">position</span>, </span>
2.  <span id="seek-param-target" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">target</span>, </span>
3.  <span id="seek-param-speed" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span>, </span>
4.  <span id="seek-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span>, </span>

})

</div>

<div>

Returns a velocity toward `target` at `speed`.

</div>

<div>

## Implementation

``` dart
static Vector2 seek({
  required Vector2 position,
  required Vector2 target,
  required double speed,
  Vector2? output,
}) {
  if (speed < 0) {
    throw ArgumentError.value(speed, 'speed', 'must not be negative');
  }
  final velocity = output ?? Vector2.zero();
  velocity.setFrom(target);
  velocity.sub(position);
  if (velocity.length2 > 0) {
    velocity.normalize();
    velocity.scale(speed);
  }
  return velocity;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadSteering](../../giant_toad/GiantToadSteering-class.md)
4.  seek static method

##### GiantToadSteering class

<div>

</div>

</div>

<div>

</div>
