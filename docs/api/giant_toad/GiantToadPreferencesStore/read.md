<div>

<div>

# <span class="kind-method">read</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="name">read</span>(

1.  <span id="read-param-key" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">key</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
Future<Object?> read(String key) async {
  final source = _preferences.getString(_key(key));
  return source == null ? null : jsonDecode(source);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPreferencesStore](../../giant_toad/GiantToadPreferencesStore-class.md)
4.  read method

##### GiantToadPreferencesStore class

<div>

</div>

</div>

<div>

</div>
