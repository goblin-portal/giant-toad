<div>

<div>

# <span class="kind-method">keys</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[Set](https://api.flutter.dev/flutter/dart-core/Set-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span>\></span></span> <span class="name">keys</span>()

<div>

<span class="feature">override</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
Future<Set<String>> keys() async => {
  for (final key in _preferences.getKeys())
    if (key.startsWith(_prefix)) key.substring(_prefix.length),
};
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPreferencesStore](../../giant_toad/GiantToadPreferencesStore-class.md)
4.  keys method

##### GiantToadPreferencesStore class

<div>

</div>

</div>

<div>

</div>
