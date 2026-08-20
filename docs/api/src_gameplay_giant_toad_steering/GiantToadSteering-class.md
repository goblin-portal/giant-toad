<div>

<div>

# <span class="kind-class">GiantToadSteering</span> class <a href="https://dart.dev/language/class-modifiers#abstract" class="feature feature-abstract" title="This type can not be directly constructed.">abstract</a> <a href="https://dart.dev/language/class-modifiers#final" class="feature feature-final" title="This class can neither be extended, implemented, nor mixed in.">final</a>

</div>

<div>

Allocation-conscious steering helpers for Flame position and velocity code.

</div>

<div>

## Properties

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

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

<div>

## Static Methods

<span class="name">[arrive](../src_gameplay_giant_toad_steering/GiantToadSteering/arrive.md)</span><span class="signature">({<span id="arrive-param-position" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">position</span>, </span><span id="arrive-param-target" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">target</span>, </span><span id="arrive-param-speed" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span>, </span><span id="arrive-param-slowRadius" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">slowRadius</span>, </span><span id="arrive-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ dynamic</span> </span>  
Returns a velocity that slows linearly inside `slowRadius`.

<span class="name">[flee](../src_gameplay_giant_toad_steering/GiantToadSteering/flee.md)</span><span class="signature">({<span id="flee-param-position" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">position</span>, </span><span id="flee-param-threat" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">threat</span>, </span><span id="flee-param-speed" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span>, </span><span id="flee-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ dynamic</span> </span>  
Returns a velocity away from `threat` at `speed`.

<span class="name">[seek](../src_gameplay_giant_toad_steering/GiantToadSteering/seek.md)</span><span class="signature">({<span id="seek-param-position" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">position</span>, </span><span id="seek-param-target" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">target</span>, </span><span id="seek-param-speed" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">speed</span>, </span><span id="seek-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ dynamic</span> </span>  
Returns a velocity toward `target` at `speed`.

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad_steering](../src_gameplay_giant_toad_steering/index.md)
3.  GiantToadSteering class

##### giant_toad_steering library

<div>

</div>

</div>

<div>

</div>
