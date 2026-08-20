<div>

<div>

# <span class="kind-method">play</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadAudioHandle](../../src_audio_giant_toad_audio/GiantToadAudioHandle-class.md)</span>\></span></span> <span class="name">play</span>(

1.  <span id="play-param-asset" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">asset</span>, {</span>
2.  <span id="play-param-bus" class="parameter"><span class="type-annotation">[GiantToadAudioBus](../../src_audio_giant_toad_audio/GiantToadAudioBus.md)</span> <span class="parameter-name">bus</span> = <span class="default-value">GiantToadAudioBus.sound</span>, </span>
3.  <span id="play-param-volume" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">volume</span> = <span class="default-value">1</span>, </span>
4.  <span id="play-param-loop" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">loop</span> = <span class="default-value">false</span>, </span>
5.  <span id="play-param-longAudio" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">longAudio</span> = <span class="default-value">false</span>, </span>

})

</div>

<div>

## Implementation

``` dart
Future<GiantToadAudioHandle> play(
  String asset, {
  GiantToadAudioBus bus = GiantToadAudioBus.sound,
  double volume = 1,
  bool loop = false,
  bool longAudio = false,
}) {
  if (asset.isEmpty || asset.startsWith('/') || asset.contains('..')) {
    throw ArgumentError.value(
      asset,
      'asset',
      'must be a safe relative asset path',
    );
  }
  final result = Completer<GiantToadAudioHandle>();
  Future<void> start() async {
    try {
      result.complete(
        await backend.play(
          asset,
          volume: effectiveVolume(bus, volume),
          loop: loop,
          longAudio: longAudio,
        ),
      );
    } catch (error, stack) {
      result.completeError(error, stack);
    }
  }

  if (_unlocked) {
    unawaited(start());
  } else {
    _queued.add(start);
  }
  return result.future;
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
4.  play method

##### GiantToadAudio class

<div>

</div>

</div>

<div>

</div>
