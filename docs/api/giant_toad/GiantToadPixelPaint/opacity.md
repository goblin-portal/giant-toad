<div>

<div>

# <span class="kind-property">opacity</span> property

</div>

<div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> get <span class="name">opacity</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
double get opacity => paint.color.a;
```

</div>

</div>

<div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

set <span class="name">opacity</span> <span class="signature">(<span id="opacity=-param-value" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">value</span></span>)</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
set opacity(double value) {
  paint.color = paint.color.withValues(alpha: value);
  for (final paint in _paints.values) {
    paint.color = paint.color.withValues(alpha: value);
  }
  onChanged();
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
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  opacity property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
