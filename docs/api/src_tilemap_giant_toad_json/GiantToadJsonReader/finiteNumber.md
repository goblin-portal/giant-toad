<div>

<div>

# <span class="kind-method">finiteNumber</span> method

</div>

<div>

<span class="returntype">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="name">finiteNumber</span>(

1.  <span id="finiteNumber-param-key" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">key</span>, {</span>
2.  <span id="finiteNumber-param-fallback" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)?</span> <span class="parameter-name">fallback</span>, </span>
3.  <span id="finiteNumber-param-nonNegative" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">nonNegative</span> = <span class="default-value">false</span>, </span>

})

</div>

<div>

## Implementation

``` dart
double finiteNumber(
  String key, {
  double? fallback,
  bool nonNegative = false,
}) {
  final value = json[key] ?? fallback;
  if (value is! num || !value.isFinite || (nonNegative && value < 0)) {
    final requirement = nonNegative ? 'a non-negative number' : 'finite';
    throw FormatException('$context $key must be $requirement.');
  }
  return value.toDouble();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_json](../../src_tilemap_giant_toad_json/index.md)
3.  [GiantToadJsonReader](../../src_tilemap_giant_toad_json/GiantToadJsonReader-class.md)
4.  finiteNumber method

##### GiantToadJsonReader class

<div>

</div>

</div>

<div>

</div>
