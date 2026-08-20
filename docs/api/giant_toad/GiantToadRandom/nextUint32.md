<div>

<div>

# <span class="kind-method">nextUint32</span> method

</div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="name">nextUint32</span>()

</div>

<div>

## Implementation

``` dart
int nextUint32() {
  var value = _state;
  value ^= (value << 13) & _mask;
  value ^= value >>> 17;
  value ^= (value << 5) & _mask;
  _state = value & _mask;
  return _state;
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
4.  nextUint32 method

##### GiantToadRandom class

<div>

</div>

</div>

<div>

</div>
