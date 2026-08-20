<div>

<div>

# <span class="kind-class">GiantToadAutosaveCoordinator</span> class

</div>

<div>

Coalesces frequent save requests and exposes an explicit lifecycle flush.

Call [markDirty](../giant_toad/GiantToadAutosaveCoordinator/markDirty.md) after meaningful state changes, [update](../giant_toad/GiantToadAutosaveCoordinator/update.md) from the game loop, and await [flush](../giant_toad/GiantToadAutosaveCoordinator/flush.md) when the application pauses or a route is disposed.

</div>

<div>

## Constructors

<span class="name">[GiantToadAutosaveCoordinator](../giant_toad/GiantToadAutosaveCoordinator/GiantToadAutosaveCoordinator.md)</span><span class="signature">({<span id="param-write" class="parameter">required <span class="type-annotation">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="parameter-name">write</span>(), </span><span id="param-delay" class="parameter"><span class="type-annotation">[Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.md)</span> <span class="parameter-name">delay</span> = <span class="default-value">const Duration(seconds: 2)</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[delay](../giant_toad/GiantToadAutosaveCoordinator/delay.md)</span> <span class="signature">→ [Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isDirty](../giant_toad/GiantToadAutosaveCoordinator/isDirty.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[isSaving](../giant_toad/GiantToadAutosaveCoordinator/isSaving.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[write](../giant_toad/GiantToadAutosaveCoordinator/write.md)</span> <span class="signature">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span> Function<span class="signature">()</span></span>  
<div>

<span class="feature">final</span>

</div>

</div>

<div>

## Methods

<span class="name">[flush](../giant_toad/GiantToadAutosaveCoordinator/flush.md)</span><span class="signature">() <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  

<span class="name">[markDirty](../giant_toad/GiantToadAutosaveCoordinator/markDirty.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  

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

<span class="name">[update](../giant_toad/GiantToadAutosaveCoordinator/update.md)</span><span class="signature">(<span id="update-param-elapsed" class="parameter"><span class="type-annotation">[Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.md)</span> <span class="parameter-name">elapsed</span></span>) <span class="returntype parameter">→ void</span> </span>  

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
3.  GiantToadAutosaveCoordinator class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
