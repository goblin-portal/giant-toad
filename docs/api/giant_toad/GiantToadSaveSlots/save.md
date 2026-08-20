<div>

<div>

# <span class="kind-method">save</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">save</span>(

1.  <span id="save-param-slot" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">slot</span>, </span>
2.  <span id="save-param-values" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">values</span></span>

)

</div>

<div>

Writes through a pending key and retains the previous valid payload as a backup. Stores with atomic writes still benefit from corruption recovery; simpler stores cannot leave the only copy half-updated.

</div>

<div>

## Implementation

``` dart
Future<void> save(String slot, Map<String, Object?> values) async {
  final key = _key(slot);
  final payload = GiantToadSaveData(
    schemaVersion: currentSchemaVersion,
    values: Map.unmodifiable(values),
  ).toJson();
  final previous = await store.read(key);
  await store.write('$key.pending', payload);
  if (previous != null) await store.write('$key.backup', previous);
  await store.write(key, payload);
  await store.remove('$key.pending');
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadSaveSlots](../../giant_toad/GiantToadSaveSlots-class.md)
4.  save method

##### GiantToadSaveSlots class

<div>

</div>

</div>

<div>

</div>
