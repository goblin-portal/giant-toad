<div>

<div>

# <span class="kind-class">GiantToadPathfinding</span> class <a href="https://dart.dev/language/class-modifiers#abstract" class="feature feature-abstract" title="This type can not be directly constructed.">abstract</a> <a href="https://dart.dev/language/class-modifiers#final" class="feature feature-final" title="This class can neither be extended, implemented, nor mixed in.">final</a>

</div>

<div>

Deterministic four-direction A\* over a bounded integer grid.

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

<span class="name">[findGridPath](../src_gameplay_giant_toad_pathfinding/GiantToadPathfinding/findGridPath.md)</span><span class="signature">({<span id="findGridPath-param-start" class="parameter">required <span class="type-annotation">[GiantToadCell](../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span> <span class="parameter-name">start</span>, </span><span id="findGridPath-param-goal" class="parameter">required <span class="type-annotation">[GiantToadCell](../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span> <span class="parameter-name">goal</span>, </span><span id="findGridPath-param-bounds" class="parameter">required <span class="type-annotation">[GiantToadGridBounds](../src_gameplay_giant_toad_pathfinding/GiantToadGridBounds-class.md)</span> <span class="parameter-name">bounds</span>, </span><span id="findGridPath-param-isBlocked" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">isBlocked</span>(<span id="contains-param-cell" class="parameter"><span class="type-annotation">[GiantToadCell](../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span> <span class="parameter-name">cell</span></span>), </span><span id="findGridPath-param-diagonal" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">diagonal</span> = <span class="default-value">false</span>, </span><span id="findGridPath-param-maxNodes" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">maxNodes</span></span>}) <span class="returntype parameter">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadCell](../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span>\></span></span> </span>  
Returns waypoints after `start`, including `goal`, or an empty list when no route exists. `isBlocked` must return false for walkable cells.

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad_pathfinding](../src_gameplay_giant_toad_pathfinding/index.md)
3.  GiantToadPathfinding class

##### giant_toad_pathfinding library

<div>

</div>

</div>

<div>

</div>
