<div>

<div>

# <span class="kind-method">operator ==</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">operator ==</span>(

1.  <span id="==-param-other" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span> <span class="parameter-name">other</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

The equality operator.

The default behavior for all [Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)s is to return true if and only if this object and `other` are the same object.

Override this method to specify a different equality relation on a class. The overriding method must still be an equivalence relation. That is, it must be:

- Total: It must return a boolean for all arguments. It should never throw.

- Reflexive: For all objects `o`, `o == o` must be true.

- Symmetric: For all objects `o1` and `o2`, `o1 == o2` and `o2 == o1` must either both be true, or both be false.

- Transitive: For all objects `o1`, `o2`, and `o3`, if `o1 == o2` and `o2 == o3` are true, then `o1 == o3` must be true.

The method should also be consistent over time, so whether two objects are equal should only change if at least one of the objects was modified.

If a subclass overrides the equality operator, it should override the [hashCode](../../src_tilemap_giant_toad_map_document/GiantToadChunkKey/hashCode.md) method as well to maintain consistency.

</div>

<div>

## Implementation

``` dart
@override
bool operator ==(Object other) =>
    other is GiantToadChunkKey && x == other.x && y == other.y;
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_document](../../src_tilemap_giant_toad_map_document/index.md)
3.  [GiantToadChunkKey](../../src_tilemap_giant_toad_map_document/GiantToadChunkKey-class.md)
4.  operator == method

##### GiantToadChunkKey class

<div>

</div>

</div>

<div>

</div>
