<div>

<div>

# <span class="kind-method">chance</span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">chance</span>(

1.  <span id="chance-param-probability" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">probability</span></span>

)

</div>

<div>

## Implementation

``` dart
bool chance(double probability) {
  if (probability < 0 || probability > 1 || !probability.isFinite) {
    throw ArgumentError.value(probability, 'probability', 'must be in 0...1');
  }
  return nextDouble() < probability;
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
4.  chance method

##### GiantToadRandom class

<div>

</div>

</div>

<div>

</div>
