<div>

<div>

# <span class="kind-method">playMusic</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">playMusic</span>(

1.  <span id="playMusic-param-asset" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">asset</span>, {</span>
2.  <span id="playMusic-param-fadeDuration" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">fadeDuration</span> = <span class="default-value">0.5</span>, </span>

})

</div>

<div>

## Implementation

``` dart
Future<void> playMusic(String asset, {double fadeDuration = 0.5}) async {
  if (fadeDuration < 0) {
    throw ArgumentError.value(
      fadeDuration,
      'fadeDuration',
      'must not be negative',
    );
  }
  final next = await play(
    asset,
    bus: GiantToadAudioBus.music,
    volume: _music == null || fadeDuration == 0 ? 1 : 0,
    loop: true,
    longAudio: true,
  );
  if (_music == null || fadeDuration == 0) {
    await _music?.stop();
    _music = next;
    _previousMusic = null;
    return;
  }
  _previousMusic = _music;
  _music = next;
  _musicFadeDuration = fadeDuration;
  _musicFadeElapsed = 0;
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
4.  playMusic method

##### GiantToadAudio class

<div>

</div>

</div>

<div>

</div>
