<div>

<div>

# <span class="kind-method">nextInt</span> method

</div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="name">nextInt</span>(

1.  <span id="nextInt-param-max" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">max</span></span>

)

</div>

<div>

## Implementation

``` dart
int nextInt(int max) {
  if (max <= 0) throw ArgumentError.value(max, 'max', 'must be positive');
  return (nextDouble() * max).floor();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_random](../../src_gameplay_giant_toad_random/index.md)
3.  [GiantToadRandom](../../src_gameplay_giant_toad_random/GiantToadRandom-class.md)
4.  nextInt method

##### GiantToadRandom class

<div>

</div>

</div>

<div>

</div>
