<div>

<div>

# <span class="kind-method">remove</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">remove</span>(

1.  <span id="remove-param-key" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">key</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
Future<void> remove(String key) async {
  await _preferences.remove(_key(key));
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_persistence](../../src_runtime_giant_toad_persistence/index.md)
3.  [GiantToadPreferencesStore](../../src_runtime_giant_toad_persistence/GiantToadPreferencesStore-class.md)
4.  remove method

##### GiantToadPreferencesStore class

<div>

</div>

</div>

<div>

</div>
