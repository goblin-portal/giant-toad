<div>

<div>

# <span class="kind-class">GiantToadGrid</span> class <a href="https://dart.dev/language/class-modifiers#abstract" class="feature feature-abstract" title="This type can not be directly constructed.">abstract</a> <a href="https://dart.dev/language/class-modifiers#final" class="feature feature-final" title="This class can neither be extended, implemented, nor mixed in.">final</a>

</div>

<div>

Reusable integer grid math for sparse tilemaps.

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

<span class="name">[cellBounds](../giant_toad/GiantToadGrid/cellBounds.md)</span><span class="signature">({<span id="cellBounds-param-x" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span><span id="cellBounds-param-y" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span>, </span><span id="cellBounds-param-tileSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span></span>}) <span class="returntype parameter">→ [Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> </span>  
Returns the pixel bounds of a cell.

<span class="name">[cellToWorld](../giant_toad/GiantToadGrid/cellToWorld.md)</span><span class="signature">({<span id="cellToWorld-param-cell" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">cell</span>, </span><span id="cellToWorld-param-tileSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span>, </span><span id="cellToWorld-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Converts a cell coordinate to the world position of its top-left corner.

<span class="name">[worldToCell](../giant_toad/GiantToadGrid/worldToCell.md)</span><span class="signature">({<span id="worldToCell-param-worldPosition" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">worldPosition</span>, </span><span id="worldToCell-param-tileSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span>, </span><span id="worldToCell-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Converts world pixels to the containing cell using floor division.

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad](../giant_toad/index.md)
3.  GiantToadGrid class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
