<div>

<div>

# <span class="kind-constructor">GiantToadPixelatePostProcess</span> constructor

</div>

<div>

<span class="name">GiantToadPixelatePostProcess</span>({

1.  <span id="param-pixelScale" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">pixelScale</span>, </span>
2.  <span id="param-pixelRatio" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)?</span> <span class="parameter-name">pixelRatio</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadPixelatePostProcess({required this.pixelScale, super.pixelRatio}) {
  if (pixelScale <= 0) {
    throw ArgumentError.value(pixelScale, 'pixelScale', 'must be positive');
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelatePostProcess](../../giant_toad/GiantToadPixelatePostProcess-class.md)
4.  GiantToadPixelatePostProcess.new constructor

##### GiantToadPixelatePostProcess class

<div>

</div>

</div>

<div>

</div>
