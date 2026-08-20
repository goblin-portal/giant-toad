<div>

<div>

# <span class="kind-class">GiantToadTileCollision</span> class

</div>

<div>

Collision queries against one sparse solid tile layer.

</div>

<div>

## Constructors

<span class="name">[GiantToadTileCollision](../giant_toad/GiantToadTileCollision/GiantToadTileCollision.md)</span><span class="signature">({<span id="param-document" class="parameter">required <span class="type-annotation">[GiantToadMapDocument](../giant_toad/GiantToadMapDocument-class.md)</span> <span class="parameter-name">document</span>, </span><span id="param-solidLayer" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">solidLayer</span> = <span class="default-value">'solids'</span>, </span><span id="param-isSolid" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">isSolid</span>(<span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../giant_toad/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span></span>)?, </span><span id="param-materialFor" class="parameter"><span class="type-annotation">[GiantToadTileMaterial](../giant_toad/GiantToadTileMaterial.md)</span> <span class="parameter-name">materialFor</span>(<span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../giant_toad/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span></span>)?, </span><span id="param-additionalLayers" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapLayer](../giant_toad/GiantToadMapLayer-class.md)</span>\></span></span> <span class="parameter-name">additionalLayers</span> = <span class="default-value">const \[\]</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[additionalLayers](../giant_toad/GiantToadTileCollision/additionalLayers.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapLayer](../giant_toad/GiantToadMapLayer-class.md)</span>\></span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[document](../giant_toad/GiantToadTileCollision/document.md)</span> <span class="signature">→ [GiantToadMapDocument](../giant_toad/GiantToadMapDocument-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[layer](../giant_toad/GiantToadTileCollision/layer.md)</span> <span class="signature">→ [GiantToadMapLayer](../giant_toad/GiantToadMapLayer-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[materialFor](../giant_toad/GiantToadTileCollision/materialFor.md)</span> <span class="signature">→ [GiantToadTileMaterial](../giant_toad/GiantToadTileMaterial.md) Function<span class="signature">(<span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../giant_toad/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span></span>)</span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[cell](../giant_toad/GiantToadTileCollision/cell.md)</span><span class="signature">(<span id="cell-param-x" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span><span id="cell-param-y" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span></span>) <span class="returntype parameter">→ [GiantToadMapCell](../giant_toad/GiantToadMapCell.md)?</span> </span>  

<span class="name">[materialAt](../giant_toad/GiantToadTileCollision/materialAt.md)</span><span class="signature">(<span id="materialAt-param-x" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span><span id="materialAt-param-y" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span></span>) <span class="returntype parameter">→ [GiantToadTileMaterial](../giant_toad/GiantToadTileMaterial.md)</span> </span>  

<span class="name">[mergedSolidRects](../giant_toad/GiantToadTileCollision/mergedSolidRects.md)</span><span class="signature">({<span id="mergedSolidRects-param-minX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minX</span>, </span><span id="mergedSolidRects-param-minY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minY</span>, </span><span id="mergedSolidRects-param-maxX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxX</span>, </span><span id="mergedSolidRects-param-maxY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxY</span></span>}) <span class="returntype parameter">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span>\></span></span> </span>  
Merges solid tile occupancy into deterministic maximal rectangles. Useful for Flame hitboxes and for comparing sparse-grid queries against a lower-body-count collision representation.

<span class="name">[moveAndSlide](../giant_toad/GiantToadTileCollision/moveAndSlide.md)</span><span class="signature">(<span id="moveAndSlide-param-body" class="parameter"><span class="type-annotation">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> <span class="parameter-name">body</span>, </span><span id="moveAndSlide-param-delta" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">delta</span></span>) <span class="returntype parameter">→ [GiantToadTileMoveResult](../giant_toad/GiantToadTileMoveResult-class.md)</span> </span>  

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[overlaps](../giant_toad/GiantToadTileCollision/overlaps.md)</span><span class="signature">(<span id="overlaps-param-bounds" class="parameter"><span class="type-annotation">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> <span class="parameter-name">bounds</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  

<span class="name">[solidAt](../giant_toad/GiantToadTileCollision/solidAt.md)</span><span class="signature">(<span id="solidAt-param-x" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span><span id="solidAt-param-y" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[triggerCells](../giant_toad/GiantToadTileCollision/triggerCells.md)</span><span class="signature">(<span id="triggerCells-param-bounds" class="parameter"><span class="type-annotation">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> <span class="parameter-name">bounds</span></span>) <span class="returntype parameter">→ [Set](https://api.flutter.dev/flutter/dart-core/Set-class.md)<span class="signature">\<<span class="type-parameter">[Point](https://api.flutter.dev/flutter/dart-math/Point-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>\></span></span>\></span></span> </span>  
Trigger cells touched by `bounds`, suitable for enter/exit state tracking.

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
3.  GiantToadTileCollision class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
