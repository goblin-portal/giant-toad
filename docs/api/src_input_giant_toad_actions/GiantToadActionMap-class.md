<div>

<div>

# <span class="kind-class">GiantToadActionMap</span> class

</div>

<div>

Maps physical control identifiers to semantic game actions.

</div>

<div>

## Constructors

<span class="name">[GiantToadActionMap](../src_input_giant_toad_actions/GiantToadActionMap/GiantToadActionMap.md)</span><span class="signature">(<span id="param-bindings" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadAction](../src_input_giant_toad_actions/GiantToadAction-class.md)</span>, <span class="type-parameter">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span>\></span></span> <span class="parameter-name">bindings</span></span>)</span>  

<span class="name">[GiantToadActionMap.fromJson](../src_input_giant_toad_actions/GiantToadActionMap/GiantToadActionMap.fromJson.md)</span><span class="signature">(<span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>)</span>  
Decodes persisted bindings keyed by action identifier.

<div>

factory

</div>

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

<span class="name">[actionsFor](../src_input_giant_toad_actions/GiantToadActionMap/actionsFor.md)</span><span class="signature">(<span id="actionsFor-param-control" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">control</span></span>) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadAction](../src_input_giant_toad_actions/GiantToadAction-class.md)</span>\></span></span> </span>  
Returns actions activated by `control`, such as `keyW` or `gamepadSouth`.

<span class="name">[controlsFor](../src_input_giant_toad_actions/GiantToadActionMap/controlsFor.md)</span><span class="signature">(<span id="controlsFor-param-action" class="parameter"><span class="type-annotation">[GiantToadAction](../src_input_giant_toad_actions/GiantToadAction-class.md)</span> <span class="parameter-name">action</span></span>) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span> </span>  

<span class="name">[isBound](../src_input_giant_toad_actions/GiantToadActionMap/isBound.md)</span><span class="signature">(<span id="isBound-param-action" class="parameter"><span class="type-annotation">[GiantToadAction](../src_input_giant_toad_actions/GiantToadAction-class.md)</span> <span class="parameter-name">action</span>, </span><span id="isBound-param-control" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">control</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toJson](../src_input_giant_toad_actions/GiantToadActionMap/toJson.md)</span><span class="signature">() <span class="returntype parameter">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> </span>  
Produces stable JSON-compatible bindings keyed by action identifier.

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
2.  [giant_toad_actions](../src_input_giant_toad_actions/index.md)
3.  GiantToadActionMap class

##### giant_toad_actions library

<div>

</div>

</div>

<div>

</div>
