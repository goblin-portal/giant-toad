<div>

<div>

# <span class="kind-method">preload</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">preload</span>(

1.  <span id="preload-param-asset" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">asset</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
Future<void> preload(String asset) async {
  await FlameAudio.audioCache.load(asset);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_audio](../../src_audio_giant_toad_audio/index.md)
3.  [GiantToadFlameAudioBackend](../../src_audio_giant_toad_audio/GiantToadFlameAudioBackend-class.md)
4.  preload method

##### GiantToadFlameAudioBackend class

<div>

</div>

</div>

<div>

</div>
