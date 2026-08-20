<div>

<div>

# <span class="kind-method">cardinalMask</span> static method

</div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="name">cardinalMask</span>({

1.  <span id="cardinalMask-param-x" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
2.  <span id="cardinalMask-param-y" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span>, </span>
3.  <span id="cardinalMask-param-matches" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">matches</span>(</span>
    1.  <span id="param-x" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
    2.  <span id="param-y" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span></span>

    ),

})

</div>

<div>

Returns the cardinal bitmask: north=1, east=2, south=4, west=8.

</div>

<div>

## Implementation

``` dart
static int cardinalMask({
  required int x,
  required int y,
  required bool Function(int x, int y) matches,
}) {
  var mask = 0;
  if (matches(x, y - 1)) mask |= 1;
  if (matches(x + 1, y)) mask |= 2;
  if (matches(x, y + 1)) mask |= 4;
  if (matches(x - 1, y)) mask |= 8;
  return mask;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_grid](../../src_tilemap_giant_toad_grid/index.md)
3.  [GiantToadAutotile](../../src_tilemap_giant_toad_grid/GiantToadAutotile-class.md)
4.  cardinalMask static method

##### GiantToadAutotile class

<div>

</div>

</div>

<div>

</div>
