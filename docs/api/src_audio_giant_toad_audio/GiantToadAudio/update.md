<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">update</span>(

1.  <span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

)

</div>

<div>

## Implementation

``` dart
Future<void> update(double dt) async {
  if (_previousMusic == null || _music == null) return;
  _musicFadeElapsed = (_musicFadeElapsed + dt).clamp(0, _musicFadeDuration);
  final progress = _musicFadeDuration == 0
      ? 1.0
      : _musicFadeElapsed / _musicFadeDuration;
  final volume = effectiveVolume(GiantToadAudioBus.music, 1);
  await _previousMusic!.setVolume(volume * (1 - progress));
  await _music!.setVolume(volume * progress);
  if (progress >= 1) {
    await _previousMusic!.stop();
    _previousMusic = null;
  }
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
4.  update method

##### GiantToadAudio class

<div>

</div>

</div>

<div>

</div>
