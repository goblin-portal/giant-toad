<div>

<div>

# <span class="kind-method">velocity</span> method

</div>

<div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="name">velocity</span>(

1.  <span id="velocity-param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">position</span>, </span>
2.  <span id="velocity-param-speed" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span></span>

)

</div>

<div>

## Implementation

``` dart
Vector2 velocity(Vector2 position, double speed) {
  if (status != GiantToadPathCompletion.moving) return Vector2.zero();
  while (_index < _waypoints.length &&
      position.distanceTo(_waypoints[_index]) <= arrivalTolerance) {
    _index++;
  }
  if (_index >= _waypoints.length) {
    status = GiantToadPathCompletion.arrived;
    return Vector2.zero();
  }
  final delta = _waypoints[_index] - position;
  return delta.normalized() * speed;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPathFollower](../../giant_toad/GiantToadPathFollower-class.md)
4.  velocity method

##### GiantToadPathFollower class

<div>

</div>

</div>

<div>

</div>
