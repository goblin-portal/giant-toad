<div>

<div>

# <span class="kind-method">touching</span> method

</div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadWorldCollider](../../src_world_giant_toad_collision_world/GiantToadWorldCollider-class.md)</span>\></span></span> <span class="name">touching</span>(

1.  <span id="touching-param-body" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">body</span>, {</span>
2.  <span id="touching-param-tag" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">tag</span>, </span>

})

</div>

<div>

## Implementation

``` dart
List<GiantToadWorldCollider> touching(Rect body, {String? tag}) => [
  for (final collider in _colliders)
    if (collider.bounds.overlaps(body) &&
        (tag == null || collider.tags.contains(tag)))
      collider,
];
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_collision_world](../../src_world_giant_toad_collision_world/index.md)
3.  [GiantToadCollisionWorld](../../src_world_giant_toad_collision_world/GiantToadCollisionWorld-class.md)
4.  touching method

##### GiantToadCollisionWorld class

<div>

</div>

</div>

<div>

</div>
