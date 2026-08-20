<div>

<div>

# <span class="kind-class">GiantToadAnimationStates\<<span class="type-parameter">T</span>\></span> class

</div>

<div>

Thin state/event policy over Flame's `SpriteAnimationGroupComponent`.

Flame remains responsible for animation ticking and rendering. This adds the state-machine behavior used repeatedly by Giant Toad games: named frame events, one-shot playback, facing, and transition after completion.

</div>

<div>

## Constructors

<span class="name">[GiantToadAnimationStates](../src_render_giant_toad_animation_states/GiantToadAnimationStates/GiantToadAnimationStates.md)</span><span class="signature">({<span id="param-animations" class="parameter">required <span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">T</span>, <span class="type-parameter">dynamic</span>\></span></span> <span class="parameter-name">animations</span>, </span><span id="param-initial" class="parameter">required <span class="type-annotation">T</span> <span class="parameter-name">initial</span>, </span><span id="param-frameEvents" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">T</span>, <span class="type-parameter">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>, <span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span>\></span></span> <span class="parameter-name">frameEvents</span> = <span class="default-value">const {}</span>, </span><span id="param-position" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">position</span>, </span><span id="param-size" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">size</span>, </span><span id="param-anchor" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">anchor</span>, </span><span id="param-priority" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">priority</span>, </span><span id="param-key" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">key</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[facingLeft](../src_render_giant_toad_animation_states/GiantToadAnimationStates/facingLeft.md)</span> <span class="signature">↔ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">getter/setter pair</span>

</div>

<span class="name">[finished](../src_render_giant_toad_animation_states/GiantToadAnimationStates/finished.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[frame](../src_render_giant_toad_animation_states/GiantToadAnimationStates/frame.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[frameEvents](../src_render_giant_toad_animation_states/GiantToadAnimationStates/frameEvents.md)</span> <span class="signature">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">T</span>, <span class="type-parameter">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>, <span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span>\></span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[playingOneShot](../src_render_giant_toad_animation_states/GiantToadAnimationStates/playingOneShot.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[consumeEvent](../src_render_giant_toad_animation_states/GiantToadAnimationStates/consumeEvent.md)</span><span class="signature">() <span class="returntype parameter">→ [GiantToadAnimationEvent](../src_render_giant_toad_animation_states/GiantToadAnimationEvent-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span>?</span> </span>  

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[play](../src_render_giant_toad_animation_states/GiantToadAnimationStates/play.md)</span><span class="signature">(<span id="play-param-state" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">state</span>, {</span><span id="play-param-restart" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">restart</span> = <span class="default-value">false</span>, </span><span id="play-param-faceLeft" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)?</span> <span class="parameter-name">faceLeft</span>, </span><span id="play-param-force" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">force</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[playOnce](../src_render_giant_toad_animation_states/GiantToadAnimationStates/playOnce.md)</span><span class="signature">(<span id="playOnce-param-state" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">state</span>, {</span><span id="playOnce-param-then" class="parameter">required <span class="type-annotation">T</span> <span class="parameter-name">then</span>, </span><span id="playOnce-param-faceLeft" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)?</span> <span class="parameter-name">faceLeft</span>, </span><span id="playOnce-param-interruptible" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">interruptible</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

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
2.  [giant_toad_animation_states](../src_render_giant_toad_animation_states/index.md)
3.  GiantToadAnimationStates<span class="signature">\<<span class="type-parameter">T</span>\></span> class

##### giant_toad_animation_states library

<div>

</div>

</div>

<div>

</div>
