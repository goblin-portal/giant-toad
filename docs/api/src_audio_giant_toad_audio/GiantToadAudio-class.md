<div>

<div>

# <span class="kind-class">GiantToadAudio</span> class

</div>

<div>

Audio buses and music crossfades over Flame Audio. Web hosts can construct this with [requiresActivation](../src_audio_giant_toad_audio/GiantToadAudio/requiresActivation.md) and call [unlock](../src_audio_giant_toad_audio/GiantToadAudio/unlock.md) from their first pointer or keyboard gesture; requests are queued rather than lost.

</div>

<div>

## Constructors

<span class="name">[GiantToadAudio](../src_audio_giant_toad_audio/GiantToadAudio/GiantToadAudio.md)</span><span class="signature">({<span id="param-backend" class="parameter"><span class="type-annotation">[GiantToadAudioBackend](../src_audio_giant_toad_audio/GiantToadAudioBackend-class.md)?</span> <span class="parameter-name">backend</span>, </span><span id="param-requiresActivation" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">requiresActivation</span> = <span class="default-value">false</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[backend](../src_audio_giant_toad_audio/GiantToadAudio/backend.md)</span> <span class="signature">→ [GiantToadAudioBackend](../src_audio_giant_toad_audio/GiantToadAudioBackend-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[requiresActivation](../src_audio_giant_toad_audio/GiantToadAudio/requiresActivation.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[unlocked](../src_audio_giant_toad_audio/GiantToadAudio/unlocked.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

</div>

<div>

## Methods

<span class="name">[dispose](../src_audio_giant_toad_audio/GiantToadAudio/dispose.md)</span><span class="signature">() <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  

<span class="name">[effectiveVolume](../src_audio_giant_toad_audio/GiantToadAudio/effectiveVolume.md)</span><span class="signature">(<span id="effectiveVolume-param-bus" class="parameter"><span class="type-annotation">[GiantToadAudioBus](../src_audio_giant_toad_audio/GiantToadAudioBus.md)</span> <span class="parameter-name">bus</span>, </span><span id="effectiveVolume-param-volume" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">volume</span></span>) <span class="returntype parameter">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> </span>  

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[play](../src_audio_giant_toad_audio/GiantToadAudio/play.md)</span><span class="signature">(<span id="play-param-asset" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">asset</span>, {</span><span id="play-param-bus" class="parameter"><span class="type-annotation">[GiantToadAudioBus](../src_audio_giant_toad_audio/GiantToadAudioBus.md)</span> <span class="parameter-name">bus</span> = <span class="default-value">GiantToadAudioBus.sound</span>, </span><span id="play-param-volume" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">volume</span> = <span class="default-value">1</span>, </span><span id="play-param-loop" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">loop</span> = <span class="default-value">false</span>, </span><span id="play-param-longAudio" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">longAudio</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadAudioHandle](../src_audio_giant_toad_audio/GiantToadAudioHandle-class.md)</span>\></span></span> </span>  

<span class="name">[playMusic](../src_audio_giant_toad_audio/GiantToadAudio/playMusic.md)</span><span class="signature">(<span id="playMusic-param-asset" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">asset</span>, {</span><span id="playMusic-param-fadeDuration" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">fadeDuration</span> = <span class="default-value">0.5</span></span>}) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  

<span class="name">[preload](../src_audio_giant_toad_audio/GiantToadAudio/preload.md)</span><span class="signature">(<span id="preload-param-asset" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">asset</span></span>) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>\></span></span> </span>  
Loads and decodes an effect before its latency-sensitive first use. Returns false when a custom backend does not support preloading.

<span class="name">[setVolume](../src_audio_giant_toad_audio/GiantToadAudio/setVolume.md)</span><span class="signature">(<span id="setVolume-param-bus" class="parameter"><span class="type-annotation">[GiantToadAudioBus](../src_audio_giant_toad_audio/GiantToadAudioBus.md)</span> <span class="parameter-name">bus</span>, </span><span id="setVolume-param-volume" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">volume</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[unlock](../src_audio_giant_toad_audio/GiantToadAudio/unlock.md)</span><span class="signature">() <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  

<span class="name">[update](../src_audio_giant_toad_audio/GiantToadAudio/update.md)</span><span class="signature">(<span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  

<span class="name">[volume](../src_audio_giant_toad_audio/GiantToadAudio/volume.md)</span><span class="signature">(<span id="volume-param-bus" class="parameter"><span class="type-annotation">[GiantToadAudioBus](../src_audio_giant_toad_audio/GiantToadAudioBus.md)</span> <span class="parameter-name">bus</span></span>) <span class="returntype parameter">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> </span>  

</div>

<div>

## Operators

<span class="name">[operator ==](https://api.flutter.dev/flutter/dart-core/Object/operator_equals.md)</span><span class="signature">(<span id="==-param-other" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
The equality operator.

<div>

<span class="feature">inherited</span>

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad_audio](../src_audio_giant_toad_audio/index.md)
3.  GiantToadAudio class

##### giant_toad_audio library

<div>

</div>

</div>

<div>

</div>
