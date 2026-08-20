<div>

<div>

# <span class="kind-method">follow</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">follow</span>(

1.  <span id="follow-param-waypoints" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>\></span></span> <span class="parameter-name">waypoints</span></span>

)

</div>

<div>

## Implementation

``` dart
void follow(Iterable<Vector2> waypoints) {
  _waypoints = [for (final point in waypoints) point.clone()];
  _index = 0;
  status = _waypoints.isEmpty
      ? GiantToadPathCompletion.arrived
      : GiantToadPathCompletion.moving;
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
4.  follow method

##### GiantToadPathFollower class

<div>

</div>

</div>

<div>

</div>
