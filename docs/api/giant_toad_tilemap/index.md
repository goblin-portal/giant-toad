<div>

<div>

# <span class="kind-library">giant_toad_tilemap</span> library

</div>

<div>

Sparse tilemap document, editing, rendering, area, and collision APIs.

</div>

<div>

## Classes

<span class="name">[GiantToadAreaChange](../src_tilemap_giant_toad_area_tracker/GiantToadAreaChange-class.md)</span>  
Enter/exit delta produced by [GiantToadAreaTracker](../src_tilemap_giant_toad_area_tracker/GiantToadAreaTracker-class.md).

<span class="name">[GiantToadAreaDocument](../src_tilemap_giant_toad_area_document/GiantToadAreaDocument-class.md)</span>  
An optional sparse-map `areas.json` document.

<span class="name">[GiantToadAreaDocumentCodec](../src_tilemap_giant_toad_area_document/GiantToadAreaDocumentCodec-class.md)</span>  
Decodes and encodes the JSON text stored in an `areas.json` file.

<span class="name">[GiantToadAreaTracker](../src_tilemap_giant_toad_area_tracker/GiantToadAreaTracker-class.md)</span>  
Tracks authored areas occupied by one cell-space subject.

<span class="name">[GiantToadAtlasTileRenderer](../src_tilemap_giant_toad_map_runtime/GiantToadAtlasTileRenderer-class.md)</span>  
Nearest-neighbor atlas renderer usable as a [GiantToadTileRenderer](../src_tilemap_giant_toad_tilemap_component/GiantToadTileRenderer.md).

<span class="name">[GiantToadAutotile](../src_tilemap_giant_toad_grid/GiantToadAutotile-class.md)</span>  
Bitmask generation for `bitmask16` and gated eight-neighbour blob rules.

<span class="name">[GiantToadAutotileRules](../src_tilemap_giant_toad_map_runtime/GiantToadAutotileRules-class.md)</span>  
Resolves autotile masks into authored tile ids.

<span class="name">[GiantToadChunkKey](../src_tilemap_giant_toad_map_document/GiantToadChunkKey-class.md)</span>  
A stable coordinate key for a sparse tile chunk.

<span class="name">[GiantToadCollisionWorld](../src_world_giant_toad_collision_world/GiantToadCollisionWorld-class.md)</span>  
Sparse broadphase-independent rectangle world for small authored collision sets. Entity-to-entity hitboxes remain Flame collision components.

<span class="name">[GiantToadGrid](../src_tilemap_giant_toad_grid/GiantToadGrid-class.md)</span>  
Reusable integer grid math for sparse tilemaps.

<span class="name">[GiantToadMapArea](../src_tilemap_giant_toad_area_document/GiantToadMapArea-class.md)</span>  
A named cell-space rectangle stored in an optional `areas.json` document.

<span class="name">[GiantToadMapCellChange](../src_tilemap_giant_toad_map_edit/GiantToadMapCellChange-class.md)</span>  
One reversible cell replacement in a sparse map layer.

<span class="name">[GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)</span>  
The canonical representation of a sparse `map.json` file.

<span class="name">[GiantToadMapDocumentCodec](../src_tilemap_giant_toad_map_document/GiantToadMapDocumentCodec-class.md)</span>  
Decodes and encodes the JSON text stored in a `map.json` file.

<span class="name">[GiantToadMapEdit](../src_tilemap_giant_toad_map_edit/GiantToadMapEdit-class.md)</span>  
A committed, reversible batch of sparse cell changes.

<span class="name">[GiantToadMapEditTransaction](../src_tilemap_giant_toad_map_edit/GiantToadMapEditTransaction-class.md)</span>  
Collects an efficient, atomic edit while a paint stroke is in progress.

<span class="name">[GiantToadMapLayer](../src_tilemap_giant_toad_map_document/GiantToadMapLayer-class.md)</span>  
One sparse, row-major tile layer from a `map.json` document.

<span class="name">[GiantToadMapObject](../src_tilemap_giant_toad_map_runtime/GiantToadMapObject-class.md)</span>  
A typed object placed in a sparse map.

<span class="name">[GiantToadMapObjectFactories](../src_tilemap_giant_toad_map_runtime/GiantToadMapObjectFactories-class.md)<span class="signature">\<<span class="type-parameter">T extends [Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span>\></span></span>  
Typed object-spawn registry. Register Flame component factories in game bootstrap code rather than switching on object types inside render loops.

<span class="name">[GiantToadMapTraversalMetrics](../src_tilemap_giant_toad_map_document/GiantToadMapTraversalMetrics-class.md)</span>  
Mutable counters populated by a bounded sparse-layer traversal.

<span class="name">[GiantToadMovingPlatform](../src_world_giant_toad_tile_collision/GiantToadMovingPlatform-class.md)</span>  
A deterministic kinematic platform. Give platforms a lower `priority` than bodies so their [frameDelta](../src_world_giant_toad_tile_collision/GiantToadMovingPlatform/frameDelta.md) is ready before character updates.

<span class="name">[GiantToadPixelBody](../src_world_giant_toad_tile_collision/GiantToadPixelBody-class.md)</span>  
Kinematic Flame component using tile-grid movement while retaining a normal Flame hitbox for entity-to-entity collision callbacks.

<span class="name">[GiantToadRaycastHit](../src_world_giant_toad_collision_world/GiantToadRaycastHit-class.md)</span>  

<span class="name">[GiantToadTileAnimation](../src_tilemap_giant_toad_map_runtime/GiantToadTileAnimation-class.md)</span>  
A deterministic looping tile animation.

<span class="name">[GiantToadTileAnimationFrame](../src_tilemap_giant_toad_map_runtime/GiantToadTileAnimationFrame-class.md)</span>  
One timed frame in an animated tile definition.

<span class="name">[GiantToadTileCell](../src_tilemap_giant_toad_map_runtime/GiantToadTileCell-class.md)</span>  
Typed interpretation of a legacy numeric or rich tile cell.

<span class="name">[GiantToadTileCollision](../src_world_giant_toad_tile_collision/GiantToadTileCollision-class.md)</span>  
Collision queries against one sparse solid tile layer.

<span class="name">[GiantToadTilemapComponent](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent-class.md)</span>  
A Flame component that renders the visible layers of a sparse map.

<span class="name">[GiantToadTilemapRenderMetrics](../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapRenderMetrics-class.md)</span>  

<span class="name">[GiantToadTileMoveResult](../src_world_giant_toad_tile_collision/GiantToadTileMoveResult-class.md)</span>  
Result of one tile-grid move-and-slide operation.

<span class="name">[GiantToadTileset](../src_tilemap_giant_toad_map_runtime/GiantToadTileset-class.md)</span>  
A tileset image laid out as a regular pixel grid.

<span class="name">[GiantToadWorldCollider](../src_world_giant_toad_collision_world/GiantToadWorldCollider-class.md)</span>  

<span class="name">[GiantToadWorldHit](../src_world_giant_toad_collision_world/GiantToadWorldHit-class.md)</span>  

<span class="name">[GiantToadWorldMoveResult](../src_world_giant_toad_collision_world/GiantToadWorldMoveResult-class.md)</span>  

</div>

<div>

## Enums

<span class="name">[GiantToadTileMaterial](../src_world_giant_toad_tile_collision/GiantToadTileMaterial.md)</span>  
Collision behavior authored on a tile cell.

</div>

<div>

## Extensions

<span class="name">[GiantToadMapRuntimeDocument](../src_tilemap_giant_toad_map_runtime/GiantToadMapRuntimeDocument.md)</span> on [GiantToadMapDocument](../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)  

</div>

<div>

## Typedefs

<span class="name">[GiantToadEditedChunk](../src_tilemap_giant_toad_map_edit/GiantToadEditedChunk.md)</span> = (<span class="field">{<span class="type-annotation">[GiantToadChunkKey](../src_tilemap_giant_toad_map_document/GiantToadChunkKey-class.md)</span> <span class="field-name">chunk</span>, </span><span class="field"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="field-name">layerId</span>}</span>)  

<span class="name">[GiantToadMapCell](../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)</span> = [Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?  
The JSON-compatible scalar, list, or object stored in a map cell.

<span class="name">[GiantToadTileRenderer](../src_tilemap_giant_toad_tilemap_component/GiantToadTileRenderer.md)</span><span class="signature"> <span class="returntype parameter">= void Function<span class="signature">(<span id="param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span>, </span><span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span>, </span><span id="param-tileX" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileX</span>, </span><span id="param-tileY" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileY</span>, </span><span id="param-tileSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span></span>)</span></span> </span>  
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
8.  [src/audio/giant_toad_audio](../src_audio_giant_toad_audio/index.md)
9.  [src/debug/giant_toad_behavior_fixture](../src_debug_giant_toad_behavior_fixture/index.md)
10. [src/debug/giant_toad_debug_overlay](../src_debug_giant_toad_debug_overlay/index.md)
11. [src/gameplay/giant_toad_dialogue](../src_gameplay_giant_toad_dialogue/index.md)
12. [src/gameplay/giant_toad_game_feel](../src_gameplay_giant_toad_game_feel/index.md)
13. [src/gameplay/giant_toad_grid_step](../src_gameplay_giant_toad_grid_step/index.md)
14. [src/gameplay/giant_toad_object_pool](../src_gameplay_giant_toad_object_pool/index.md)
15. [src/gameplay/giant_toad_path_following](../src_gameplay_giant_toad_path_following/index.md)
16. [src/gameplay/giant_toad_pathfinding](../src_gameplay_giant_toad_pathfinding/index.md)
17. [src/gameplay/giant_toad_perception](../src_gameplay_giant_toad_perception/index.md)
18. [src/gameplay/giant_toad_pixel_camera](../src_gameplay_giant_toad_pixel_camera/index.md)
19. [src/gameplay/giant_toad_random](../src_gameplay_giant_toad_random/index.md)
20. [src/gameplay/giant_toad_steering](../src_gameplay_giant_toad_steering/index.md)
21. [src/gameplay/giant_toad_tasks](../src_gameplay_giant_toad_tasks/index.md)
22. [src/giant_toad_editor_camera](../src_giant_toad_editor_camera/index.md)
23. [src/giant_toad_game](../src_giant_toad_game/index.md)
24. [src/giant_toad_pixel_coordinates](../src_giant_toad_pixel_coordinates/index.md)
25. [src/giant_toad_pixel_viewport](../src_giant_toad_pixel_viewport/index.md)
26. [src/giant_toad_resolution](../src_giant_toad_resolution/index.md)
27. [src/input/giant_toad_action_input](../src_input_giant_toad_action_input/index.md)
28. [src/input/giant_toad_actions](../src_input_giant_toad_actions/index.md)
29. [src/project/giant_toad_project](../src_project_giant_toad_project/index.md)
30. [src/render/giant_toad_ambient_lighting](../src_render_giant_toad_ambient_lighting/index.md)
31. [src/render/giant_toad_animation_states](../src_render_giant_toad_animation_states/index.md)
32. [src/render/giant_toad_directional_animation](../src_render_giant_toad_directional_animation/index.md)
33. [src/render/giant_toad_lighting](../src_render_giant_toad_lighting/index.md)
34. [src/render/giant_toad_pixel_post_process](../src_render_giant_toad_pixel_post_process/index.md)
35. [src/render/giant_toad_pixel_sprites](../src_render_giant_toad_pixel_sprites/index.md)
36. [src/render/giant_toad_surface_shaders](../src_render_giant_toad_surface_shaders/index.md)
37. [src/runtime/giant_toad_capabilities](../src_runtime_giant_toad_capabilities/index.md)
38. [src/runtime/giant_toad_persistence](../src_runtime_giant_toad_persistence/index.md)
39. [src/runtime/giant_toad_systems](../src_runtime_giant_toad_systems/index.md)
40. [src/scenes/giant_toad_scenes](../src_scenes_giant_toad_scenes/index.md)
41. [src/tilemap/giant_toad_area_document](../src_tilemap_giant_toad_area_document/index.md)
42. [src/tilemap/giant_toad_area_tracker](../src_tilemap_giant_toad_area_tracker/index.md)
43. [src/tilemap/giant_toad_grid](../src_tilemap_giant_toad_grid/index.md)
44. [src/tilemap/giant_toad_json](../src_tilemap_giant_toad_json/index.md)
45. [src/tilemap/giant_toad_map_document](../src_tilemap_giant_toad_map_document/index.md)
46. [src/tilemap/giant_toad_map_edit](../src_tilemap_giant_toad_map_edit/index.md)
47. [src/tilemap/giant_toad_map_runtime](../src_tilemap_giant_toad_map_runtime/index.md)
48. [src/tilemap/giant_toad_tilemap_component](../src_tilemap_giant_toad_tilemap_component/index.md)
49. [src/ui/giant_toad_controls](../src_ui_giant_toad_controls/index.md)
50. [src/ui/giant_toad_editor_controls](../src_ui_giant_toad_editor_controls/index.md)
51. [src/ui/giant_toad_focus](../src_ui_giant_toad_focus/index.md)
52. [src/ui/giant_toad_game_widgets](../src_ui_giant_toad_game_widgets/index.md)
53. [src/ui/giant_toad_icon](../src_ui_giant_toad_icon/index.md)
54. [src/ui/giant_toad_menu](../src_ui_giant_toad_menu/index.md)
55. [src/ui/giant_toad_nine_slice](../src_ui_giant_toad_nine_slice/index.md)
56. [src/ui/giant_toad_overlay](../src_ui_giant_toad_overlay/index.md)
57. [src/ui/giant_toad_pixel_button](../src_ui_giant_toad_pixel_button/index.md)
58. [src/ui/giant_toad_ui_feedback](../src_ui_giant_toad_ui_feedback/index.md)
59. [src/ui/giant_toad_ui_theme](../src_ui_giant_toad_ui_theme/index.md)
60. [src/world/giant_toad_collision_world](../src_world_giant_toad_collision_world/index.md)
61. [src/world/giant_toad_tile_collision](../src_world_giant_toad_tile_collision/index.md)

</div>

<div>

##### giant_toad_tilemap library

</div>
