<div>

<div>

# <span class="kind-method">resolve</span> method

</div>

<div>

<span class="returntype">[GiantToadDirectionalState](../../giant_toad/GiantToadDirectionalState-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span> <span class="name">resolve</span>(

1.  <span id="resolve-param-facing" class="parameter"><span class="type-annotation">[GiantToadFacing](../../giant_toad/GiantToadFacing.md)</span> <span class="parameter-name">facing</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadDirectionalState<T> resolve(GiantToadFacing facing) {
  final exact = states[facing];
  if (exact != null) return GiantToadDirectionalState(state: exact);

  final mirrored = switch (facing) {
    GiantToadFacing.left => GiantToadFacing.right,
    GiantToadFacing.upLeft => GiantToadFacing.upRight,
    GiantToadFacing.downLeft => GiantToadFacing.downRight,
    GiantToadFacing.right => GiantToadFacing.left,
    GiantToadFacing.upRight => GiantToadFacing.upLeft,
    GiantToadFacing.downRight => GiantToadFacing.downLeft,
    _ => null,
  };
  if (mirrored != null && states.containsKey(mirrored)) {
    return GiantToadDirectionalState(
      state: states[mirrored] as T,
      flipX: true,
    );
  }

  for (final fallback in _fallbacks(facing)) {
    if (states.containsKey(fallback)) {
      return GiantToadDirectionalState(state: states[fallback] as T);
    }
  }
  return GiantToadDirectionalState(state: states.values.first);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadDirectionalAnimations<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../giant_toad/GiantToadDirectionalAnimations-class.md)
4.  resolve method

##### GiantToadDirectionalAnimations class

<div>

</div>

</div>

<div>

</div>
