<div>

<div>

# <span class="kind-class">GiantToadMapDocument</span> class

</div>

<div>

The canonical representation of a sparse `map.json` file.

Chunks are sparse and row-major. Their keys are `"chunkX,chunkY"`, and a chunk contains exactly `chunkSize * chunkSize` cells. Empty cells are `0`. A non-empty cell is either a legacy numeric tile ID or an authored JSON object, such as `{ "tileId": 0, "region": "desert:6", "mask": 255 }`.

</div>

<div>

Available extensions  
- [GiantToadMapRuntimeDocument](../src_tilemap_giant_toad_map_runtime/GiantToadMapRuntimeDocument.md)

</div>

<div>

## Constructors

<span class="name">[GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument/GiantToadMapDocument.md)</span><span class="signature">({<span id="param-tileSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span>, </span><span id="param-chunkSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span> = <span class="default-value">16</span>, </span><span id="param-layers" class="parameter">required <span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapLayer](../src_tilemap_giant_toad_map_document/GiantToadMapLayer-class.md)</span>\></span></span> <span class="parameter-name">layers</span>, </span><span id="param-objects" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span>\></span></span> <span class="parameter-name">objects</span> = <span class="default-value">const \[\]</span>, </span><span id="param-additionalFields" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">additionalFields</span> = <span class="default-value">const {}</span></span>})</span>  

<span class="name">[GiantToadMapDocument.fromJson](../src_tilemap_giant_toad_map_document/GiantToadMapDocument/GiantToadMapDocument.fromJson.md)</span><span class="signature">(<span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>)</span>  
<div>

factory

</div>

</div>

<div>

## Properties

<span class="name">[additionalFields](../src_tilemap_giant_toad_map_document/GiantToadMapDocument/additionalFields.md)</span> <span class="signature">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span>  
Fields unknown to this package, retained during a decode/encode cycle.

<div>

<span class="feature">final</span>

</div>

<span class="name">[chunkSize](../src_tilemap_giant_toad_map_document/GiantToadMapDocument/chunkSize.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
Number of cells along one side of every square sparse chunk.

<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[layers](../src_tilemap_giant_toad_map_document/GiantToadMapDocument/layers.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapLayer](../src_tilemap_giant_toad_map_document/GiantToadMapLayer-class.md)</span>\></span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[objects](../src_tilemap_giant_toad_map_document/GiantToadMapDocument/objects.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span>\></span></span>  
Placed object documents, preserved for the future object runtime.

<div>

<span class="feature">final</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[tilesets](../src_tilemap_giant_toad_map_runtime/GiantToadMapRuntimeDocument/tilesets.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadTileset](../src_tilemap_giant_toad_map_runtime/GiantToadTileset-class.md)</span>\></span></span>  
Available on [GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md), provided by the [GiantToadMapRuntimeDocument](../src_tilemap_giant_toad_map_runtime/GiantToadMapRuntimeDocument.md) extension

<div>

<span class="feature">no setter</span>

</div>

<span class="name">[tileSize](../src_tilemap_giant_toad_map_document/GiantToadMapDocument/tileSize.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
Pixel dimension of one grid cell.

<div>

<span class="feature">final</span>

</div>

<span class="name">[typedObjects](../src_tilemap_giant_toad_map_runtime/GiantToadMapRuntimeDocument/typedObjects.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapObject](../src_tilemap_giant_toad_map_runtime/GiantToadMapObject-class.md)</span>\></span></span>  
Available on [GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md), provided by the [GiantToadMapRuntimeDocument](../src_tilemap_giant_toad_map_runtime/GiantToadMapRuntimeDocument.md) extension

<div>

<span class="feature">no setter</span>

</div>

</div>

<div>

## Methods

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toJson](../src_tilemap_giant_toad_map_document/GiantToadMapDocument/toJson.md)</span><span class="signature">() <span class="returntype parameter">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> </span>  

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
3.  GiantToadMapDocument class

##### giant_toad_map_document library

<div>

</div>

</div>

<div>

</div>
