<div>

<div>

# <span class="kind-method">raycast</span> method

</div>

<div>

<span class="returntype">[GiantToadRaycastHit](../../src_world_giant_toad_collision_world/GiantToadRaycastHit-class.md)?</span> <span class="name">raycast</span>(

1.  <span id="raycast-param-start" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">start</span>, </span>
2.  <span id="raycast-param-end" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">end</span>, {</span>
3.  <span id="raycast-param-tag" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">tag</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadRaycastHit? raycast(Vector2 start, Vector2 end, {String? tag}) {
  final delta = end - start;
  GiantToadRaycastHit? nearest;
  for (final collider in _colliders) {
    if (collider.trigger || (tag != null && !collider.tags.contains(tag))) {
      continue;
    }
    final fraction = _rayFraction(start, delta, collider.bounds);
    if (fraction == null) continue;
    final distance = delta.length * fraction;
    if (nearest == null || distance < nearest.distance) {
      nearest = GiantToadRaycastHit(
        collider: collider,
        point: start + delta * fraction,
        distance: distance,
      );
    }
  }
  return nearest;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_collision_world](../../src_world_giant_toad_collision_world/index.md)
3.  [GiantToadCollisionWorld](../../src_world_giant_toad_collision_world/GiantToadCollisionWorld-class.md)
4.  raycast method

##### GiantToadCollisionWorld class

<div>

</div>

</div>

<div>

</div>
