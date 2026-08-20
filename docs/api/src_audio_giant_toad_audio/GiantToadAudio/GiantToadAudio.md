<div>

<div>

# <span class="kind-constructor">GiantToadAudio</span> constructor

</div>

<div>

<span class="name">GiantToadAudio</span>({

1.  <span id="param-backend" class="parameter"><span class="type-annotation">[GiantToadAudioBackend](../../src_audio_giant_toad_audio/GiantToadAudioBackend-class.md)?</span> <span class="parameter-name">backend</span>, </span>
2.  <span id="param-requiresActivation" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">requiresActivation</span> = <span class="default-value">false</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadAudio({
  GiantToadAudioBackend? backend,
  this.requiresActivation = false,
}) : backend = backend ?? GiantToadFlameAudioBackend(),
     _unlocked = !requiresActivation;
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_audio](../../src_audio_giant_toad_audio/index.md)
3.  [GiantToadAudio](../../src_audio_giant_toad_audio/GiantToadAudio-class.md)
4.  GiantToadAudio.new constructor

##### GiantToadAudio class

<div>

</div>

</div>

<div>

</div>
