<div>

<div>

# <span class="kind-method">create</span> static method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadPreferencesStore](../../src_runtime_giant_toad_persistence/GiantToadPreferencesStore-class.md)</span>\></span></span> <span class="name">create</span>({

1.  <span id="create-param-namespace" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">namespace</span> = <span class="default-value">'giant_toad'</span>, </span>

})

</div>

<div>

## Implementation

``` dart
static Future<GiantToadPreferencesStore> create({
  String namespace = 'giant_toad',
}) async => GiantToadPreferencesStore._(
  await SharedPreferences.getInstance(),
  namespace,
);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_persistence](../../src_runtime_giant_toad_persistence/index.md)
3.  [GiantToadPreferencesStore](../../src_runtime_giant_toad_persistence/GiantToadPreferencesStore-class.md)
4.  create static method

##### GiantToadPreferencesStore class

<div>

</div>

</div>

<div>

</div>
