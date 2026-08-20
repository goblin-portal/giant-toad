<div>

<div>

# <span class="kind-method">advance</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">advance</span>(

1.  <span id="advance-param-delta" class="parameter"><span class="type-annotation">[Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.md)</span> <span class="parameter-name">delta</span></span>

)

</div>

<div>

## Implementation

``` dart
void advance(Duration delta) {
  if (delta.isNegative) throw ArgumentError.value(delta, 'delta');
  elapsed += delta;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadAtlasTileRenderer](../../giant_toad/GiantToadAtlasTileRenderer-class.md)
4.  advance method

##### GiantToadAtlasTileRenderer class

<div>

</div>

</div>

<div>

</div>
