<div>

<div>

# <span class="kind-method">arrive</span> static method

</div>

<div>

<span class="returntype">dynamic</span> <span class="name">arrive</span>({

1.  <span id="arrive-param-position" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">position</span>, </span>
2.  <span id="arrive-param-target" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">target</span>, </span>
3.  <span id="arrive-param-speed" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span>, </span>
4.  <span id="arrive-param-slowRadius" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">slowRadius</span>, </span>
5.  <span id="arrive-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span>, </span>

})

</div>

<div>

Returns a velocity that slows linearly inside `slowRadius`.

</div>

<div>

## Implementation

``` dart
static Vector2 arrive({
  required Vector2 position,
  required Vector2 target,
  required double speed,
  required double slowRadius,
  Vector2? output,
}) {
  if (slowRadius <= 0) {
    throw ArgumentError.value(slowRadius, 'slowRadius', 'must be positive');
  }
  final velocity = seek(
    position: position,
    target: target,
    speed: speed,
    output: output,
  );
  final distance = target.distanceTo(position);
  if (distance < slowRadius) {
    velocity.scale(distance / slowRadius);
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
2.  [giant_toad_steering](../../src_gameplay_giant_toad_steering/index.md)
3.  [GiantToadSteering](../../src_gameplay_giant_toad_steering/GiantToadSteering-class.md)
4.  arrive static method

##### GiantToadSteering class

<div>

</div>

</div>

<div>

</div>
