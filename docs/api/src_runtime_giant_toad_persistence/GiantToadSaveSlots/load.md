<div>

<div>

# <span class="kind-method">load</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadSaveData](../../src_runtime_giant_toad_persistence/GiantToadSaveData-class.md)?</span>\></span></span> <span class="name">load</span>(

1.  <span id="load-param-slot" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">slot</span></span>

)

</div>

<div>

Loads the primary payload, then an interrupted pending write, then backup. A recovered payload is promoted to primary and the damaged value is kept under `.corrupt` for diagnostics.

</div>

<div>

## Implementation

``` dart
Future<GiantToadSaveData?> load(String slot) async {
  final key = _key(slot);
  Object? firstFailure;
  for (final candidate in [key, '$key.pending', '$key.backup']) {
    final raw = await store.read(candidate);
    if (raw == null) continue;
    try {
      final data = _decodeAndMigrate(raw);
      if (candidate != key) {
        final damaged = await store.read(key);
        if (damaged != null) await store.write('$key.corrupt', damaged);
        await store.write(key, data.toJson());
        await store.remove('$key.pending');
      }
      return data;
    } on FormatException catch (error) {
      firstFailure ??= error;
    } on StateError catch (error) {
      firstFailure ??= error;
    }
  }
  if (firstFailure != null) throw firstFailure;
  return null;
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
4.  load method

##### GiantToadSaveSlots class

<div>

</div>

</div>

<div>

</div>
