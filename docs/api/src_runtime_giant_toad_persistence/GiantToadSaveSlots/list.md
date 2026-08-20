<div>

<div>

# <span class="kind-method">list</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span>\></span></span> <span class="name">list</span>()

</div>

<div>

## Implementation

``` dart
Future<List<String>> list() async {
  final slots = <String>[
    for (final key in await store.keys())
      if (key.startsWith(keyPrefix) &&
          !key.endsWith('.pending') &&
          !key.endsWith('.backup') &&
          !key.endsWith('.corrupt'))
        key.substring(keyPrefix.length),
  ]..sort();
  return slots;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_persistence](../../src_runtime_giant_toad_persistence/index.md)
3.  [GiantToadSaveSlots](../../src_runtime_giant_toad_persistence/GiantToadSaveSlots-class.md)
4.  list method

##### GiantToadSaveSlots class

<div>

</div>

</div>

<div>

</div>
