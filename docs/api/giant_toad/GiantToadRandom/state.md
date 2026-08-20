<div>

<div>

# <span class="kind-property">state</span> property

</div>

<div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> get <span class="name">state</span>

</div>

<div>

## Implementation

``` dart
int get state => _state;
```

</div>

</div>

<div>

<div>

set <span class="name">state</span> <span class="signature">(<span id="state=-param-value" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">value</span></span>)</span>

</div>

<div>

## Implementation

``` dart
set state(int value) {
  _state = value & _mask;
  if (_state == 0) _state = 0x6d2b79f5;
}
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadRandom](../../giant_toad/GiantToadRandom-class.md)
4.  state property

##### GiantToadRandom class

<div>

</div>

</div>

<div>

</div>
