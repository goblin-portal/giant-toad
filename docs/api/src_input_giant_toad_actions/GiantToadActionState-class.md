<div>

<div>

# <span class="kind-class">GiantToadActionState</span> class

</div>

<div>

Stores the currently held physical controls and exposes semantic actions.

</div>

<div>

## Constructors

<span class="name">[GiantToadActionState](../src_input_giant_toad_actions/GiantToadActionState/GiantToadActionState.md)</span><span class="signature">(<span id="param-bindings" class="parameter"><span class="type-annotation">[GiantToadActionMap](../src_input_giant_toad_actions/GiantToadActionMap-class.md)</span> <span class="parameter-name">bindings</span></span>)</span>  

</div>

<div>

## Properties

<span class="name">[bindings](../src_input_giant_toad_actions/GiantToadActionState/bindings.md)</span> <span class="signature">→ [GiantToadActionMap](../src_input_giant_toad_actions/GiantToadActionMap-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

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

<span class="name">[clear](../src_input_giant_toad_actions/GiantToadActionState/clear.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  

<span class="name">[controlValue](../src_input_giant_toad_actions/GiantToadActionState/controlValue.md)</span><span class="signature">(<span id="controlValue-param-control" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">control</span></span>) <span class="returntype parameter">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> </span>  

<span class="name">[endFrame](../src_input_giant_toad_actions/GiantToadActionState/endFrame.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Clears one-frame edges after game systems have consumed them.

<span class="name">[isPressed](../src_input_giant_toad_actions/GiantToadActionState/isPressed.md)</span><span class="signature">(<span id="isPressed-param-action" class="parameter"><span class="type-annotation">[GiantToadAction](../src_input_giant_toad_actions/GiantToadAction-class.md)</span> <span class="parameter-name">action</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  

<span class="name">[justPressed](../src_input_giant_toad_actions/GiantToadActionState/justPressed.md)</span><span class="signature">(<span id="justPressed-param-action" class="parameter"><span class="type-annotation">[GiantToadAction](../src_input_giant_toad_actions/GiantToadAction-class.md)</span> <span class="parameter-name">action</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  

<span class="name">[justReleased](../src_input_giant_toad_actions/GiantToadActionState/justReleased.md)</span><span class="signature">(<span id="justReleased-param-action" class="parameter"><span class="type-annotation">[GiantToadAction](../src_input_giant_toad_actions/GiantToadAction-class.md)</span> <span class="parameter-name">action</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[press](../src_input_giant_toad_actions/GiantToadActionState/press.md)</span><span class="signature">(<span id="press-param-control" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">control</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[release](../src_input_giant_toad_actions/GiantToadActionState/release.md)</span><span class="signature">(<span id="release-param-control" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">control</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[setValue](../src_input_giant_toad_actions/GiantToadActionState/setValue.md)</span><span class="signature">(<span id="setValue-param-control" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">control</span>, </span><span id="setValue-param-value" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">value</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[value](../src_input_giant_toad_actions/GiantToadActionState/value.md)</span><span class="signature">(<span id="value-param-action" class="parameter"><span class="type-annotation">[GiantToadAction](../src_input_giant_toad_actions/GiantToadAction-class.md)</span> <span class="parameter-name">action</span></span>) <span class="returntype parameter">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> </span>  

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
2.  [giant_toad_actions](../src_input_giant_toad_actions/index.md)
3.  GiantToadActionState class

##### giant_toad_actions library

<div>

</div>

</div>

<div>

</div>
