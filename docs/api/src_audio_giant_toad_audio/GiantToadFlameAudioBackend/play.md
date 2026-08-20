<div>

<div>

# <span class="kind-method">play</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadAudioHandle](../../src_audio_giant_toad_audio/GiantToadAudioHandle-class.md)</span>\></span></span> <span class="name">play</span>(

1.  <span id="play-param-asset" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">asset</span>, {</span>
2.  <span id="play-param-volume" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">volume</span>, </span>
3.  <span id="play-param-loop" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">loop</span>, </span>
4.  <span id="play-param-longAudio" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">longAudio</span>, </span>

})

<div>

<span class="feature">override</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
Future<GiantToadAudioHandle> play(
  String asset, {
  required double volume,
  required bool loop,
  required bool longAudio,
}) async {
  final AudioPlayer player;
  if (longAudio) {
    player = loop
        ? await FlameAudio.loopLongAudio(asset, volume: volume)
        : await FlameAudio.playLongAudio(asset, volume: volume);
  } else {
    player = loop
        ? await FlameAudio.loop(asset, volume: volume)
        : await FlameAudio.play(asset, volume: volume);
  }
  return _FlameAudioHandle(player);
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
4.  play method

##### GiantToadFlameAudioBackend class

<div>

</div>

</div>

<div>

</div>
