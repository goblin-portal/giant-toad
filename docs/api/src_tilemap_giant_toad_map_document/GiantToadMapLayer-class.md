<div>

<div>

# <span class="kind-class">GiantToadMapLayer</span> class

</div>

<div>

One sparse, row-major tile layer from a `map.json` document.

</div>

<div>

## Constructors

<span class="name">[GiantToadMapLayer](../src_tilemap_giant_toad_map_document/GiantToadMapLayer/GiantToadMapLayer.md)</span><span class="signature">({<span id="param-id" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">id</span>, </span><span id="param-name" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span>, </span><span id="param-chunks" class="parameter">required <span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadChunkKey](../src_tilemap_giant_toad_map_document/GiantToadChunkKey-class.md)</span>, <span class="type-parameter">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapCell](../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)?</span>\></span></span>\></span></span> <span class="parameter-name">chunks</span>, </span><span id="param-additionalFields" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">additionalFields</span> = <span class="default-value">const {}</span></span>})</span>  

<span class="name">[GiantToadMapLayer.fromJson](../src_tilemap_giant_toad_map_document/GiantToadMapLayer/GiantToadMapLayer.fromJson.md)</span><span class="signature">(<span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span>, {</span><span id="fromJson-param-chunkSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span></span>})</span>  
<div>

factory

</div>

</div>

<div>

## Properties

<span class="name">[additionalFields](../src_tilemap_giant_toad_map_document/GiantToadMapLayer/additionalFields.md)</span> <span class="signature">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span>  
Fields unknown to this package, retained during a decode/encode cycle.

<div>

<span class="feature">final</span>

</div>

<span class="name">[chunks](../src_tilemap_giant_toad_map_document/GiantToadMapLayer/chunks.md)</span> <span class="signature">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadChunkKey](../src_tilemap_giant_toad_map_document/GiantToadChunkKey-class.md)</span>, <span class="type-parameter">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapCell](../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)?</span>\></span></span>\></span></span>  
Sparse chunks, keyed by signed chunk coordinates.

<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[id](../src_tilemap_giant_toad_map_document/GiantToadMapLayer/id.md)</span> <span class="signature">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>  
Stable machine identifier referenced by catalog definitions.

<div>

<span class="feature">final</span>

</div>

<span class="name">[name](../src_tilemap_giant_toad_map_document/GiantToadMapLayer/name.md)</span> <span class="signature">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>  
User-facing layer name.

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

<span class="name">[forEachCellInBounds](../src_tilemap_giant_toad_map_document/GiantToadMapLayer/forEachCellInBounds.md)</span><span class="signature">({<span id="forEachCellInBounds-param-chunkSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span>, </span><span id="forEachCellInBounds-param-minX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minX</span>, </span><span id="forEachCellInBounds-param-minY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minY</span>, </span><span id="forEachCellInBounds-param-maxX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxX</span>, </span><span id="forEachCellInBounds-param-maxY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxY</span>, </span><span id="forEachCellInBounds-param-visit" class="parameter">required <span class="type-annotation">void</span> <span class="parameter-name">visit</span>(<span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span>, </span><span id="param-x" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span><span id="param-y" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span></span>), </span><span id="forEachCellInBounds-param-metrics" class="parameter"><span class="type-annotation">[GiantToadMapTraversalMetrics](../src_tilemap_giant_toad_map_document/GiantToadMapTraversalMetrics-class.md)?</span> <span class="parameter-name">metrics</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Invokes `visit` for each non-empty cell in the inclusive cell bounds.

<span class="name">[hasCellInBounds](../src_tilemap_giant_toad_map_document/GiantToadMapLayer/hasCellInBounds.md)</span><span class="signature">({<span id="hasCellInBounds-param-chunkSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span>, </span><span id="hasCellInBounds-param-minX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minX</span>, </span><span id="hasCellInBounds-param-minY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minY</span>, </span><span id="hasCellInBounds-param-maxX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxX</span>, </span><span id="hasCellInBounds-param-maxY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxY</span></span>}) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Whether the bounds contain at least one authored non-empty cell.

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toJson](../src_tilemap_giant_toad_map_document/GiantToadMapLayer/toJson.md)</span><span class="signature">() <span class="returntype parameter">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> </span>  

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
2.  [giant_toad_map_document](../src_tilemap_giant_toad_map_document/index.md)
3.  GiantToadMapLayer class

##### giant_toad_map_document library

<div>

</div>

</div>

<div>

</div>
