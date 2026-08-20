<div>

<div>

# <span class="kind-method">effectiveVolume</span> method

</div>

<div>

<span class="returntype">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="name">effectiveVolume</span>(

1.  <span id="effectiveVolume-param-bus" class="parameter"><span class="type-annotation">[GiantToadAudioBus](../../giant_toad/GiantToadAudioBus.md)</span> <span class="parameter-name">bus</span>, </span>
2.  <span id="effectiveVolume-param-volume" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">volume</span></span>

)

</div>

<div>

## Implementation

``` dart
double effectiveVolume(GiantToadAudioBus bus, double volume) =>
    volume * this.volume(bus) * this.volume(GiantToadAudioBus.master);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadAudio](../../giant_toad/GiantToadAudio-class.md)
4.  effectiveVolume method

##### GiantToadAudio class

<div>

</div>

</div>

<div>

</div>
