<div>

<div>

# <span class="kind-method">preload</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>\></span></span> <span class="name">preload</span>(

1.  <span id="preload-param-asset" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">asset</span></span>

)

</div>

<div>

Loads and decodes an effect before its latency-sensitive first use. Returns false when a custom backend does not support preloading.

</div>

<div>

## Implementation

``` dart
Future<bool> preload(String asset) async {
  final currentBackend = backend;
  if (currentBackend is! GiantToadPreloadableAudioBackend) return false;
  await (currentBackend as GiantToadPreloadableAudioBackend).preload(asset);
  return true;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_audio](../../src_audio_giant_toad_audio/index.md)
3.  [GiantToadAudio](../../src_audio_giant_toad_audio/GiantToadAudio-class.md)
4.  preload method

##### GiantToadAudio class

<div>

</div>

</div>

<div>

</div>
