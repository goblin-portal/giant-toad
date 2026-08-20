<div>

<div>

# <span class="kind-method">dispose</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">dispose</span>()

</div>

<div>

## Implementation

``` dart
Future<void> dispose() async {
  if (_disposed) return;
  _disposed = true;
  for (final disposer in _disposers.reversed) {
    await disposer();
  }
  _disposers.clear();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_scenes](../../src_scenes_giant_toad_scenes/index.md)
3.  [GiantToadSceneResources](../../src_scenes_giant_toad_scenes/GiantToadSceneResources-class.md)
4.  dispose method

##### GiantToadSceneResources class

<div>

</div>

</div>

<div>

</div>
