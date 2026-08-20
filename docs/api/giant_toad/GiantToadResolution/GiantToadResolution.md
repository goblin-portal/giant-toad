<div>

<div>

# <span class="kind-constructor">GiantToadResolution</span> constructor

</div>

<div>

<span class="name">GiantToadResolution</span>({

1.  <span id="param-width" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">width</span>, </span>
2.  <span id="param-height" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">height</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadResolution({required this.width, required this.height}) {
  if (!width.isFinite || width <= 0) {
    throw ArgumentError.value(width, 'width', 'must be finite and positive');
  }
  if (!height.isFinite || height <= 0) {
    throw ArgumentError.value(
      height,
      'height',
      'must be finite and positive',
    );
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
3.  [GiantToadResolution](../../giant_toad/GiantToadResolution-class.md)
4.  GiantToadResolution.new constructor

##### GiantToadResolution class

<div>

</div>

</div>

<div>

</div>
