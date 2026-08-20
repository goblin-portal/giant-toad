<div>

<div>

# <span class="kind-class">GiantToadPixelCoordinates</span> class <a href="https://dart.dev/language/class-modifiers#abstract" class="feature feature-abstract" title="This type can not be directly constructed.">abstract</a> <a href="https://dart.dev/language/class-modifiers#final" class="feature feature-final" title="This class can neither be extended, implemented, nor mixed in.">final</a>

</div>

<div>

Pixel-grid coordinate helpers for Giant Toad's logical canvas.

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

<span class="name">[canvasToLogical](../giant_toad/GiantToadPixelCoordinates/canvasToLogical.md)</span><span class="signature">({<span id="canvasToLogical-param-resolution" class="parameter">required <span class="type-annotation">[GiantToadResolution](../giant_toad/GiantToadResolution-class.md)</span> <span class="parameter-name">resolution</span>, </span><span id="canvasToLogical-param-metrics" class="parameter">required <span class="type-annotation">[GiantToadViewportMetrics](../giant_toad/GiantToadViewportMetrics-class.md)</span> <span class="parameter-name">metrics</span>, </span><span id="canvasToLogical-param-canvasPosition" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">canvasPosition</span>, </span><span id="canvasToLogical-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> </span>  
Converts a physical game-canvas position to a logical-canvas position.

<span class="name">[logicalToCanvas](../giant_toad/GiantToadPixelCoordinates/logicalToCanvas.md)</span><span class="signature">({<span id="logicalToCanvas-param-metrics" class="parameter">required <span class="type-annotation">[GiantToadViewportMetrics](../giant_toad/GiantToadViewportMetrics-class.md)</span> <span class="parameter-name">metrics</span>, </span><span id="logicalToCanvas-param-logicalPosition" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">logicalPosition</span>, </span><span id="logicalToCanvas-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Converts a logical-canvas position to a physical game-canvas position.

<span class="name">[snap](../giant_toad/GiantToadPixelCoordinates/snap.md)</span><span class="signature">(<span id="snap-param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">position</span>, {</span><span id="snap-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Snaps `position` to the nearest logical pixel.

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad](../giant_toad/index.md)
3.  GiantToadPixelCoordinates class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
