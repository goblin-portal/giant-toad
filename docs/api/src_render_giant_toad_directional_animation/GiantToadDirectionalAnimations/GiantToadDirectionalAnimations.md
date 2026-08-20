<div>

<div>

# <span class="kind-constructor">GiantToadDirectionalAnimations\<<span class="type-parameter">T</span>\></span> constructor

</div>

<div>

<span class="name">GiantToadDirectionalAnimations\<<span class="type-parameter">T</span>\></span>({

1.  <span id="param-states" class="parameter">required <span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadFacing](../../src_render_giant_toad_directional_animation/GiantToadFacing.md)</span>, <span class="type-parameter">T</span>\></span></span> <span class="parameter-name">states</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadDirectionalAnimations({required Map<GiantToadFacing, T> states})
  : states = Map.unmodifiable(states) {
  if (states.isEmpty) throw ArgumentError.value(states, 'states');
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_directional_animation](../../src_render_giant_toad_directional_animation/index.md)
3.  [GiantToadDirectionalAnimations<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../src_render_giant_toad_directional_animation/GiantToadDirectionalAnimations-class.md)
4.  GiantToadDirectionalAnimations.new constructor

##### GiantToadDirectionalAnimations class

<div>

</div>

</div>

<div>

</div>
