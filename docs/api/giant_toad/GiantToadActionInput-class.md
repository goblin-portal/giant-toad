<div>

<div>

# <span class="kind-class">GiantToadActionInput</span> class

</div>

<div>

Device-neutral input sink for keyboard, pointer, joystick, and gamepad adapters. Platform gamepad packages can forward events here without entering the semantic action layer.

</div>

<div>

## Constructors

<span class="name">[GiantToadActionInput](../giant_toad/GiantToadActionInput/GiantToadActionInput.md)</span><span class="signature">(<span id="param-state" class="parameter"><span class="type-annotation">[GiantToadActionState](../giant_toad/GiantToadActionState-class.md)</span> <span class="parameter-name">state</span>, {</span><span id="param-axisDeadzone" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">axisDeadzone</span> = <span class="default-value">0.2</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[axisDeadzone](../giant_toad/GiantToadActionInput/axisDeadzone.md)</span> <span class="signature">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
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

<span class="name">[state](../giant_toad/GiantToadActionInput/state.md)</span> <span class="signature">→ [GiantToadActionState](../giant_toad/GiantToadActionState-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

</div>

<div>

## Methods

<span class="name">[disconnectGamepad](../giant_toad/GiantToadActionInput/disconnectGamepad.md)</span><span class="signature">(<span id="disconnectGamepad-param-gamepad" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">gamepad</span></span>) <span class="returntype parameter">→ void</span> </span>  
Releases controls owned by a disconnected physical controller.

<span class="name">[gamepadAxis](../giant_toad/GiantToadActionInput/gamepadAxis.md)</span><span class="signature">(<span id="gamepadAxis-param-gamepad" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">gamepad</span>, </span><span id="gamepadAxis-param-axis" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">axis</span>, </span><span id="gamepadAxis-param-value" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">value</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[gamepadButton](../giant_toad/GiantToadActionInput/gamepadButton.md)</span><span class="signature">(<span id="gamepadButton-param-gamepad" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">gamepad</span>, </span><span id="gamepadButton-param-button" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">button</span>, {</span><span id="gamepadButton-param-pressed" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">pressed</span></span>}) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[joystick](../giant_toad/GiantToadActionInput/joystick.md)</span><span class="signature">(<span id="joystick-param-delta" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">delta</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[keyboard](../giant_toad/GiantToadActionInput/keyboard.md)</span><span class="signature">(<span id="keyboard-param-key" class="parameter"><span class="type-annotation">[LogicalKeyboardKey](https://api.flutter.dev/flutter/services/LogicalKeyboardKey-class.md)</span> <span class="parameter-name">key</span>, {</span><span id="keyboard-param-pressed" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">pressed</span></span>}) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pointer](../giant_toad/GiantToadActionInput/pointer.md)</span><span class="signature">(<span id="pointer-param-button" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">button</span>, {</span><span id="pointer-param-pressed" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">pressed</span></span>}) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[releaseAll](../giant_toad/GiantToadActionInput/releaseAll.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Releases every device after focus loss, pause, or input cancellation.

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[touch](../giant_toad/GiantToadActionInput/touch.md)</span><span class="signature">(<span id="touch-param-region" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">region</span>, {</span><span id="touch-param-pressed" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">pressed</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Feeds a named virtual touch region such as `moveLeft` or `jump`.

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
2.  [giant_toad](../giant_toad/index.md)
3.  GiantToadActionInput class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
