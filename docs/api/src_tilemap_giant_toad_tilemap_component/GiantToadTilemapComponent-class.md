<div>

<div>

# <span class="kind-class">GiantToadTilemapComponent</span> class

</div>

<div>

A Flame component that renders the visible layers of a sparse map.

The component owns map traversal only. [tileRenderer](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/tileRenderer.md) resolves authored tile cells to sprites, atlas regions, or custom draws, keeping asset/catalog policy outside the map-data runtime.

</div>

<div>

## Constructors

<span class="name">[GiantToadTilemapComponent](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/GiantToadTilemapComponent.md)</span><span class="signature">({<span id="param-document" class="parameter">required <span class="type-annotation">[GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)</span> <span class="parameter-name">document</span>, </span><span id="param-tileRenderer" class="parameter">required <span class="type-annotation">[GiantToadTileRenderer](../src_tilemap_giant_toad_tilemap_component/GiantToadTileRenderer.md)</span> <span class="parameter-name">tileRenderer</span>, </span><span id="param-cacheChunks" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">cacheChunks</span> = <span class="default-value">false</span>, </span><span id="param-position" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">position</span>, </span><span id="param-priority" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">priority</span>, </span><span id="param-key" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">key</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[cacheChunks](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/cacheChunks.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Caches static chunk pictures until [invalidateRenderCache](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/invalidateRenderCache.md) is called.

<div>

<span class="feature">final</span>

</div>

<span class="name">[document](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/document.md)</span> <span class="signature">↔ [GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)</span>  
<div>

<span class="feature">getter/setter pair</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[renderMetrics](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/renderMetrics.md)</span> <span class="signature">→ [GiantToadTilemapRenderMetrics](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapRenderMetrics-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[revision](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/revision.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
Monotonic invalidation token for render caches and diagnostics.

<div>

<span class="feature">no setter</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[tileRenderer](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/tileRenderer.md)</span> <span class="signature">→ [GiantToadTileRenderer](../src_tilemap_giant_toad_tilemap_component/GiantToadTileRenderer.md)</span>  
<div>

<span class="feature">final</span>

</div>

</div>

<div>

## Methods

<span class="name">[applyEdit](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/applyEdit.md)</span><span class="signature">(<span id="applyEdit-param-edit" class="parameter"><span class="type-annotation">[GiantToadMapEdit](../src_tilemap_giant_toad_map_edit/GiantToadMapEdit-class.md)</span> <span class="parameter-name">edit</span></span>) <span class="returntype parameter">→ void</span> </span>  
Applies a reversible map edit and invalidates only its affected chunks.

<span class="name">[invalidateRenderCache](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/invalidateRenderCache.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Disposes all cached pictures after an asset or animation-frame change.

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onRemove](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/onRemove.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  

<span class="name">[render](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/render.md)</span><span class="signature">(<span id="render-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[replaceDocument](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent/replaceDocument.md)</span><span class="signature">(<span id="replaceDocument-param-next" class="parameter"><span class="type-annotation">[GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)</span> <span class="parameter-name">next</span>, {</span><span id="replaceDocument-param-changedChunks" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadEditedChunk](../src_tilemap_giant_toad_map_edit/GiantToadEditedChunk.md)</span>\></span>?</span> <span class="parameter-name">changedChunks</span></span>}) <span class="returntype parameter">→ void</span> </span>  

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
2.  [giant_toad_tilemap_component](../src_tilemap_giant_toad_tilemap_component/index.md)
3.  GiantToadTilemapComponent class

##### giant_toad_tilemap_component library

<div>

</div>

</div>

<div>

</div>
