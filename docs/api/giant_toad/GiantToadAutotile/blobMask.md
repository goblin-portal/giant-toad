<div>

<div>

# <span class="kind-method">blobMask</span> static method

</div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="name">blobMask</span>({

1.  <span id="blobMask-param-x" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
2.  <span id="blobMask-param-y" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span>, </span>
3.  <span id="blobMask-param-matches" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">matches</span>(</span>
    1.  <span id="param-x" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
    2.  <span id="param-y" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span></span>

    ),

})

</div>

<div>

Returns a gated eight-neighbour blob mask.

Diagonals are included only when both adjacent cardinal neighbours match: north-east=16, south-east=32, south-west=64, north-west=128.

</div>

<div>

## Implementation

``` dart
static int blobMask({
  required int x,
  required int y,
  required bool Function(int x, int y) matches,
}) {
  final north = matches(x, y - 1);
  final east = matches(x + 1, y);
  final south = matches(x, y + 1);
  final west = matches(x - 1, y);
  var mask = 0;
  if (north) mask |= 1;
  if (east) mask |= 2;
  if (south) mask |= 4;
  if (west) mask |= 8;
  if (north && east && matches(x + 1, y - 1)) mask |= 16;
  if (south && east && matches(x + 1, y + 1)) mask |= 32;
  if (south && west && matches(x - 1, y + 1)) mask |= 64;
  if (north && west && matches(x - 1, y - 1)) mask |= 128;
  return mask;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadAutotile](../../giant_toad/GiantToadAutotile-class.md)
4.  blobMask static method

##### GiantToadAutotile class

<div>

</div>

</div>

<div>

</div>
