<div>

<div>

# <span class="kind-class">GiantToadViewportMetrics</span> class

</div>

<div>

The calculated placement of a logical pixel canvas within a game canvas.

</div>

<div>

## Constructors

<span class="name">[GiantToadViewportMetrics.expand](../giant_toad/GiantToadViewportMetrics/GiantToadViewportMetrics.expand.md)</span><span class="signature">({<span id="expand-param-canvasSize" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">canvasSize</span>, </span><span id="expand-param-pixelScale" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">pixelScale</span></span>})</span>  
Calculates expansion at an authored integer scale.

<div>

factory

</div>

<span class="name">[GiantToadViewportMetrics.expandWidth](../giant_toad/GiantToadViewportMetrics/GiantToadViewportMetrics.expandWidth.md)</span><span class="signature">({<span id="expandWidth-param-resolution" class="parameter">required <span class="type-annotation">[GiantToadResolution](../giant_toad/GiantToadResolution-class.md)</span> <span class="parameter-name">resolution</span>, </span><span id="expandWidth-param-canvasSize" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">canvasSize</span></span>})</span>  
Calculates a viewport that preserves logical width and expands vertically.

<div>

factory

</div>

<span class="name">[GiantToadViewportMetrics.fit](../giant_toad/GiantToadViewportMetrics/GiantToadViewportMetrics.fit.md)</span><span class="signature">({<span id="fit-param-resolution" class="parameter">required <span class="type-annotation">[GiantToadResolution](../giant_toad/GiantToadResolution-class.md)</span> <span class="parameter-name">resolution</span>, </span><span id="fit-param-canvasSize" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">canvasSize</span></span>})</span>  
Calculates the largest integer scale that fits `resolution` in `canvasSize`, centering the remaining space as letterboxing.

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

<span class="name">[offset](../giant_toad/GiantToadViewportMetrics/offset.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The top-left letterbox offset in physical canvas coordinates.

<div>

<span class="feature">final</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[scale](../giant_toad/GiantToadViewportMetrics/scale.md)</span> <span class="signature">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
The uniform scale applied to the logical canvas.

<div>

<span class="feature">final</span>

</div>

<span class="name">[size](../giant_toad/GiantToadViewportMetrics/size.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The physical size of the displayed logical canvas.

<div>

<span class="feature">final</span>

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

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad](../giant_toad/index.md)
3.  GiantToadViewportMetrics class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
