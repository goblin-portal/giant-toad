<div>

<div>

# <span class="kind-library">giant_toad_tilemap</span> library

</div>

<div>

Sparse tilemap document, editing, rendering, area, and collision APIs.

</div>

<div>

## Classes

<span class="name">[GiantToadAreaChange](../giant_toad/GiantToadAreaChange-class.md)</span>  
Enter/exit delta produced by [GiantToadAreaTracker](../giant_toad/GiantToadAreaTracker-class.md).

<span class="name">[GiantToadAreaDocument](../giant_toad/GiantToadAreaDocument-class.md)</span>  
An optional sparse-map `areas.json` document.

<span class="name">[GiantToadAreaDocumentCodec](../giant_toad/GiantToadAreaDocumentCodec-class.md)</span>  
Decodes and encodes the JSON text stored in an `areas.json` file.

<span class="name">[GiantToadAreaTracker](../giant_toad/GiantToadAreaTracker-class.md)</span>  
Tracks authored areas occupied by one cell-space subject.

<span class="name">[GiantToadAtlasTileRenderer](../giant_toad/GiantToadAtlasTileRenderer-class.md)</span>  
Nearest-neighbor atlas renderer usable as a [GiantToadTileRenderer](../giant_toad/GiantToadTileRenderer.md).

<span class="name">[GiantToadAutotile](../giant_toad/GiantToadAutotile-class.md)</span>  
Bitmask generation for `bitmask16` and gated eight-neighbour blob rules.

<span class="name">[GiantToadAutotileRules](../giant_toad/GiantToadAutotileRules-class.md)</span>  
Resolves autotile masks into authored tile ids.

<span class="name">[GiantToadChunkKey](../giant_toad/GiantToadChunkKey-class.md)</span>  
A stable coordinate key for a sparse tile chunk.

<span class="name">[GiantToadCollisionWorld](../giant_toad/GiantToadCollisionWorld-class.md)</span>  
Sparse broadphase-independent rectangle world for small authored collision sets. Entity-to-entity hitboxes remain Flame collision components.

<span class="name">[GiantToadGrid](../giant_toad/GiantToadGrid-class.md)</span>  
Reusable integer grid math for sparse tilemaps.

<span class="name">[GiantToadMapArea](../giant_toad/GiantToadMapArea-class.md)</span>  
A named cell-space rectangle stored in an optional `areas.json` document.

<span class="name">[GiantToadMapCellChange](../giant_toad/GiantToadMapCellChange-class.md)</span>  
One reversible cell replacement in a sparse map layer.

<span class="name">[GiantToadMapDocument](../giant_toad/GiantToadMapDocument-class.md)</span>  
The canonical representation of a sparse `map.json` file.

<span class="name">[GiantToadMapDocumentCodec](../giant_toad/GiantToadMapDocumentCodec-class.md)</span>  
Decodes and encodes the JSON text stored in a `map.json` file.

<span class="name">[GiantToadMapEdit](../giant_toad/GiantToadMapEdit-class.md)</span>  
A committed, reversible batch of sparse cell changes.

<span class="name">[GiantToadMapEditTransaction](../giant_toad/GiantToadMapEditTransaction-class.md)</span>  
Collects an efficient, atomic edit while a paint stroke is in progress.

<span class="name">[GiantToadMapLayer](../giant_toad/GiantToadMapLayer-class.md)</span>  
One sparse, row-major tile layer from a `map.json` document.

<span class="name">[GiantToadMapObject](../giant_toad/GiantToadMapObject-class.md)</span>  
A typed object placed in a sparse map.

<span class="name">[GiantToadMapObjectFactories](../giant_toad/GiantToadMapObjectFactories-class.md)<span class="signature">\<<span class="type-parameter">T extends [Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span>\></span></span>  
Typed object-spawn registry. Register Flame component factories in game bootstrap code rather than switching on object types inside render loops.

<span class="name">[GiantToadMapTraversalMetrics](../giant_toad/GiantToadMapTraversalMetrics-class.md)</span>  
Mutable counters populated by a bounded sparse-layer traversal.

<span class="name">[GiantToadMovingPlatform](../giant_toad/GiantToadMovingPlatform-class.md)</span>  
A deterministic kinematic platform. Give platforms a lower [priority](https://pub.dev/documentation/flame/1.38.0/components/Component/priority.md) than bodies so their [frameDelta](../giant_toad/GiantToadMovingPlatform/frameDelta.md) is ready before character updates.

<span class="name">[GiantToadPixelBody](../giant_toad/GiantToadPixelBody-class.md)</span>  
Kinematic Flame component using tile-grid movement while retaining a normal Flame hitbox for entity-to-entity collision callbacks.

<span class="name">[GiantToadRaycastHit](../giant_toad/GiantToadRaycastHit-class.md)</span>  

<span class="name">[GiantToadTileAnimation](../giant_toad/GiantToadTileAnimation-class.md)</span>  
A deterministic looping tile animation.

<span class="name">[GiantToadTileAnimationFrame](../giant_toad/GiantToadTileAnimationFrame-class.md)</span>  
One timed frame in an animated tile definition.

<span class="name">[GiantToadTileCell](../giant_toad/GiantToadTileCell-class.md)</span>  
Typed interpretation of a legacy numeric or rich tile cell.

<span class="name">[GiantToadTileCollision](../giant_toad/GiantToadTileCollision-class.md)</span>  
Collision queries against one sparse solid tile layer.

<span class="name">[GiantToadTilemapComponent](../giant_toad/GiantToadTilemapComponent-class.md)</span>  
A Flame component that renders the visible layers of a sparse map.

<span class="name">[GiantToadTilemapRenderMetrics](../giant_toad/GiantToadTilemapRenderMetrics-class.md)</span>  

<span class="name">[GiantToadTileMoveResult](../giant_toad/GiantToadTileMoveResult-class.md)</span>  
Result of one tile-grid move-and-slide operation.

<span class="name">[GiantToadTileset](../giant_toad/GiantToadTileset-class.md)</span>  
A tileset image laid out as a regular pixel grid.

<span class="name">[GiantToadWorldCollider](../giant_toad/GiantToadWorldCollider-class.md)</span>  

<span class="name">[GiantToadWorldHit](../giant_toad/GiantToadWorldHit-class.md)</span>  

<span class="name">[GiantToadWorldMoveResult](../giant_toad/GiantToadWorldMoveResult-class.md)</span>  

</div>

<div>

## Enums

<span class="name">[GiantToadTileMaterial](../giant_toad/GiantToadTileMaterial.md)</span>  
Collision behavior authored on a tile cell.

</div>

<div>

## Extensions

<span class="name">[GiantToadMapRuntimeDocument](../giant_toad/GiantToadMapRuntimeDocument.md)</span> on [GiantToadMapDocument](../giant_toad/GiantToadMapDocument-class.md)  

</div>

<div>

## Typedefs

<span class="name">[GiantToadEditedChunk](../giant_toad/GiantToadEditedChunk.md)</span> = (<span class="field">{<span class="type-annotation">[GiantToadChunkKey](../giant_toad/GiantToadChunkKey-class.md)</span> <span class="field-name">chunk</span>, </span><span class="field"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="field-name">layerId</span>}</span>)  

<span class="name">[GiantToadMapCell](../giant_toad/GiantToadMapCell.md)</span> = [Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?  
The JSON-compatible scalar, list, or object stored in a map cell.

<span class="name">[GiantToadTileRenderer](../giant_toad/GiantToadTileRenderer.md)</span><span class="signature"> <span class="returntype parameter">= void Function<span class="signature">(<span id="param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span>, </span><span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../giant_toad/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span>, </span><span id="param-tileX" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileX</span>, </span><span id="param-tileY" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileY</span>, </span><span id="param-tileSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span></span>)</span></span> </span>  
Draws one authored map cell at its integer tile coordinates.

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  giant_toad_tilemap.dart

##### <span class="package-name">giant_toad</span> <span class="package-kind">package</span>

1.  Libraries
2.  [giant_toad](../giant_toad/index.md)
3.  [giant_toad_gameplay](../giant_toad_gameplay/index.md)
4.  [giant_toad_render](../giant_toad_render/index.md)
5.  [giant_toad_runtime](../giant_toad_runtime/index.md)
6.  [giant_toad_tilemap](../giant_toad_tilemap/index.md)
7.  [giant_toad_ui](../giant_toad_ui/index.md)

</div>

<div>

##### giant_toad_tilemap library

</div>
