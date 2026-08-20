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
  await _previousMusic?.stop();
  await _music?.stop();
  _previousMusic = null;
  _music = null;
  _queued.clear();
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
4.  dispose method

##### GiantToadAudio class

<div>

</div>

</div>

<div>

</div>
