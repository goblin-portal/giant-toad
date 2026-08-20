<div>

<div>

# <span class="kind-method">setVolume</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">setVolume</span>(

1.  <span id="setVolume-param-bus" class="parameter"><span class="type-annotation">[GiantToadAudioBus](../../src_audio_giant_toad_audio/GiantToadAudioBus.md)</span> <span class="parameter-name">bus</span>, </span>
2.  <span id="setVolume-param-volume" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">volume</span></span>

)

</div>

<div>

## Implementation

``` dart
void setVolume(GiantToadAudioBus bus, double volume) {
  if (!volume.isFinite || volume < 0 || volume > 1) {
    throw ArgumentError.value(volume, 'volume', 'must be in 0...1');
  }
  _volumes[bus] = volume;
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
4.  setVolume method

##### GiantToadAudio class

<div>

</div>

</div>

<div>

</div>
