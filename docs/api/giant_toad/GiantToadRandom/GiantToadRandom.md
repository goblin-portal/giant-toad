<div>

<div>

# <span class="kind-constructor">GiantToadRandom</span> constructor

</div>

<div>

<span class="name">GiantToadRandom</span>(

1.  <span id="param-seed" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">seed</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadRandom(int seed) : _state = seed & _mask {
  if (_state == 0) _state = 0x6d2b79f5;
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
4.  GiantToadRandom.new constructor

##### GiantToadRandom class

<div>

</div>

</div>

<div>

</div>
