<div>

<div>

# <span class="kind-method">unlock</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">unlock</span>()

</div>

<div>

## Implementation

``` dart
Future<void> unlock() async {
  if (_unlocked) return;
  _unlocked = true;
  final queued = List<Future<void> Function()>.of(_queued);
  _queued.clear();
  for (final start in queued) {
    await start();
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadAudio](../../giant_toad/GiantToadAudio-class.md)
4.  unlock method

##### GiantToadAudio class

<div>

</div>

</div>

<div>

</div>
