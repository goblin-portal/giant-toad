<div>

<div>

# <span class="kind-method">integer</span> method

</div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="name">integer</span>(

1.  <span id="integer-param-key" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">key</span>, {</span>
2.  <span id="integer-param-fallback" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">fallback</span>, </span>
3.  <span id="integer-param-allowZero" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">allowZero</span> = <span class="default-value">false</span>, </span>

})

</div>

<div>

## Implementation

``` dart
int integer(String key, {int? fallback, bool allowZero = false}) {
  final value = json[key] ?? fallback;
  if (value is! int || (allowZero ? value < 0 : value <= 0)) {
    final requirement = allowZero ? 'non-negative' : 'positive';
    throw FormatException('$context $key must be $requirement.');
  }
  return value;
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
4.  integer method

##### GiantToadJsonReader class

<div>

</div>

</div>

<div>

</div>
