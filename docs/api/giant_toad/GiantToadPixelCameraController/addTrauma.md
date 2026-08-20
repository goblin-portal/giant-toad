<div>

<div>

# <span class="kind-method">addTrauma</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">addTrauma</span>(

1.  <span id="addTrauma-param-amount" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">amount</span></span>

)

</div>

<div>

## Implementation

``` dart
void addTrauma(double amount) {
  if (!amount.isFinite || amount < 0) {
    throw ArgumentError.value(
      amount,
      'amount',
      'must be finite and non-negative',
    );
  }
  _trauma = (_trauma + amount).clamp(0, 1);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelCameraController](../../giant_toad/GiantToadPixelCameraController-class.md)
4.  addTrauma method

##### GiantToadPixelCameraController class

<div>

</div>

</div>

<div>

</div>
