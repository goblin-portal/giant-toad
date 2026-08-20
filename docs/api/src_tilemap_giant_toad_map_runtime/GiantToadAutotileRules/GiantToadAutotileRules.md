<div>

<div>

# <span class="kind-constructor">GiantToadAutotileRules</span> constructor

</div>

<div>

<span class="name">GiantToadAutotileRules</span>(

1.  <span id="param-tileByMask" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>, <span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>\></span></span> <span class="parameter-name">tileByMask</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadAutotileRules(Map<int, int> tileByMask)
  : tileByMask = Map.unmodifiable(tileByMask) {
  if (tileByMask.keys.any((mask) => mask < 0 || mask > 255) ||
      tileByMask.values.any((tile) => tile < 0)) {
    throw ArgumentError(
      'Autotile masks must be 0...255 and tile ids non-negative.',
    );
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_runtime](../../src_tilemap_giant_toad_map_runtime/index.md)
3.  [GiantToadAutotileRules](../../src_tilemap_giant_toad_map_runtime/GiantToadAutotileRules-class.md)
4.  GiantToadAutotileRules.new constructor

##### GiantToadAutotileRules class

<div>

</div>

</div>

<div>

</div>
