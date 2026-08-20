<div>

<div>

# <span class="kind-method">string</span> method

</div>

<div>

<span class="returntype">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="name">string</span>(

1.  <span id="string-param-key" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">key</span>, {</span>
2.  <span id="string-param-fallback" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">fallback</span>, </span>
3.  <span id="string-param-safePath" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">safePath</span> = <span class="default-value">false</span>, </span>

})

</div>

<div>

## Implementation

``` dart
String string(String key, {String? fallback, bool safePath = false}) {
  final value = json[key] ?? fallback;
  if (value is! String || value.isEmpty) {
    throw FormatException('$context $key must be a non-empty string.');
  }
  if (safePath && (value.startsWith('/') || value.contains('..'))) {
    throw FormatException('$context $key must be a safe relative path.');
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
4.  string method

##### GiantToadJsonReader class

<div>

</div>

</div>

<div>

</div>
