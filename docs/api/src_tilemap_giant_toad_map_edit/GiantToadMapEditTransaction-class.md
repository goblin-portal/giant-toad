<div>

<div>

# <span class="kind-class">GiantToadMapEditTransaction</span> class

</div>

<div>

Collects an efficient, atomic edit while a paint stroke is in progress.

</div>

<div>

## Constructors

<span class="name">[GiantToadMapEditTransaction](../src_tilemap_giant_toad_map_edit/GiantToadMapEditTransaction/GiantToadMapEditTransaction.md)</span><span class="signature">(<span id="param-document" class="parameter"><span class="type-annotation">[GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)</span> <span class="parameter-name">document</span></span>)</span>  

</div>

<div>

## Properties

<span class="name">[document](../src_tilemap_giant_toad_map_edit/GiantToadMapEditTransaction/document.md)</span> <span class="signature">→ [GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isEmpty](../src_tilemap_giant_toad_map_edit/GiantToadMapEditTransaction/isEmpty.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[commit](../src_tilemap_giant_toad_map_edit/GiantToadMapEditTransaction/commit.md)</span><span class="signature">() <span class="returntype parameter">→ [GiantToadMapEdit](../src_tilemap_giant_toad_map_edit/GiantToadMapEdit-class.md)?</span> </span>  
Returns the pending edit, or `null` when no cells changed.

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[setCell](../src_tilemap_giant_toad_map_edit/GiantToadMapEditTransaction/setCell.md)</span><span class="signature">({<span id="setCell-param-layerId" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">layerId</span>, </span><span id="setCell-param-x" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span><span id="setCell-param-y" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span>, </span><span id="setCell-param-value" class="parameter">required <span class="type-annotation">[GiantToadMapCell](../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)?</span> <span class="parameter-name">value</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Records the final value at a cell. Repeated calls for the same cell keep the pre-stroke value and replace only the final value.

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
2.  [giant_toad_map_edit](../src_tilemap_giant_toad_map_edit/index.md)
3.  GiantToadMapEditTransaction class

##### giant_toad_map_edit library

<div>

</div>

</div>

<div>

</div>
