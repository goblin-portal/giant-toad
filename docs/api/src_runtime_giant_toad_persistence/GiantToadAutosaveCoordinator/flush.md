<div>

<div>

# <span class="kind-method">flush</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">flush</span>()

</div>

<div>

## Implementation

``` dart
Future<void> flush() async {
  final active = _active;
  if (active != null) return active;
  if (!_dirty) return;
  _dirty = false;
  _elapsed = Duration.zero;
  final operation = write();
  _active = operation;
  try {
    await operation;
  } catch (_) {
    _dirty = true;
    rethrow;
  } finally {
    _active = null;
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_persistence](../../src_runtime_giant_toad_persistence/index.md)
3.  [GiantToadAutosaveCoordinator](../../src_runtime_giant_toad_persistence/GiantToadAutosaveCoordinator-class.md)
4.  flush method

##### GiantToadAutosaveCoordinator class

<div>

</div>

</div>

<div>

</div>
