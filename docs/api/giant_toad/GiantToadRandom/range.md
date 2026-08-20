<div>

<div>

# <span class="kind-method">range</span> method

</div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="name">range</span>(

1.  <span id="range-param-min" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">min</span>, </span>
2.  <span id="range-param-maxInclusive" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxInclusive</span></span>

)

</div>

<div>

## Implementation

``` dart
int range(int min, int maxInclusive) {
  if (maxInclusive < min) throw ArgumentError('maxInclusive must be >= min');
  return min + nextInt(maxInclusive - min + 1);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadRandom](../../giant_toad/GiantToadRandom-class.md)
4.  range method

##### GiantToadRandom class

<div>

</div>

</div>

<div>

</div>
