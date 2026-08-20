<div>

<div>

# <span class="kind-constructor">GiantToadWorldCollider</span> constructor

</div>

<div>

<span class="name">GiantToadWorldCollider</span>({

1.  <span id="param-id" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">id</span>, </span>
2.  <span id="param-bounds" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">bounds</span>, </span>
3.  <span id="param-trigger" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">trigger</span> = <span class="default-value">false</span>, </span>
4.  <span id="param-tags" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span> <span class="parameter-name">tags</span> = <span class="default-value">const \[\]</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadWorldCollider({
  required this.id,
  required this.bounds,
  this.trigger = false,
  Iterable<String> tags = const [],
}) : tags = Set.unmodifiable(tags);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_collision_world](../../src_world_giant_toad_collision_world/index.md)
3.  [GiantToadWorldCollider](../../src_world_giant_toad_collision_world/GiantToadWorldCollider-class.md)
4.  GiantToadWorldCollider.new constructor

##### GiantToadWorldCollider class

<div>

</div>

</div>

<div>

</div>
