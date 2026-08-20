<div>

<div>

# <span class="kind-library">giant_toad</span> library

</div>

<div>

## Classes

<span class="name">[GiantToadAction](../src_input_giant_toad_actions/GiantToadAction-class.md)</span>  
A semantic input action, independent of keyboard, touch, or controller APIs.

<span class="name">[GiantToadActionInput](../src_input_giant_toad_action_input/GiantToadActionInput-class.md)</span>  
Device-neutral input sink for keyboard, pointer, joystick, and gamepad adapters. Platform gamepad packages can forward events here without entering the semantic action layer.

<span class="name">[GiantToadActionMap](../src_input_giant_toad_actions/GiantToadActionMap-class.md)</span>  
Maps physical control identifiers to semantic game actions.

<span class="name">[GiantToadActionMapCodec](../src_input_giant_toad_actions/GiantToadActionMapCodec-class.md)</span>  
Encodes persisted action bindings without coupling to a storage backend.

<span class="name">[GiantToadActionState](../src_input_giant_toad_actions/GiantToadActionState-class.md)</span>  
Stores the currently held physical controls and exposes semantic actions.

<span class="name">[GiantToadActionTask](../src_gameplay_giant_toad_tasks/GiantToadActionTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadAmbientLight](../src_render_giant_toad_ambient_lighting/GiantToadAmbientLight-class.md)</span>  

<span class="name">[GiantToadAmbientLightComponent](../src_render_giant_toad_ambient_lighting/GiantToadAmbientLightComponent-class.md)</span>  
Pixel-safe ambient mask. Mount in a camera viewport and supply positions in that component's local coordinate space.

<span class="name">[GiantToadAnimationEvent](../src_render_giant_toad_animation_states/GiantToadAnimationEvent-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Named frame event emitted by [GiantToadAnimationStates](../src_render_giant_toad_animation_states/GiantToadAnimationStates-class.md).

<span class="name">[GiantToadAnimationStates](../src_render_giant_toad_animation_states/GiantToadAnimationStates-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Thin state/event policy over Flame's `SpriteAnimationGroupComponent`.

<span class="name">[GiantToadAreaChange](../src_tilemap_giant_toad_area_tracker/GiantToadAreaChange-class.md)</span>  
Enter/exit delta produced by [GiantToadAreaTracker](../src_tilemap_giant_toad_area_tracker/GiantToadAreaTracker-class.md).

<span class="name">[GiantToadAreaDocument](../src_tilemap_giant_toad_area_document/GiantToadAreaDocument-class.md)</span>  
An optional sparse-map `areas.json` document.

<span class="name">[GiantToadAreaDocumentCodec](../src_tilemap_giant_toad_area_document/GiantToadAreaDocumentCodec-class.md)</span>  
Decodes and encodes the JSON text stored in an `areas.json` file.

<span class="name">[GiantToadAreaTracker](../src_tilemap_giant_toad_area_tracker/GiantToadAreaTracker-class.md)</span>  
Tracks authored areas occupied by one cell-space subject.

<span class="name">[GiantToadAssets](../src_project_giant_toad_project/GiantToadAssets-class.md)</span>  
Canonical project asset roots. Games may add folders but must not reinterpret these paths across platforms.

<span class="name">[GiantToadAtlasTileRenderer](../src_tilemap_giant_toad_map_runtime/GiantToadAtlasTileRenderer-class.md)</span>  
Nearest-neighbor atlas renderer usable as a [GiantToadTileRenderer](../src_tilemap_giant_toad_tilemap_component/GiantToadTileRenderer.md).

<span class="name">[GiantToadAudio](../src_audio_giant_toad_audio/GiantToadAudio-class.md)</span>  
Audio buses and music crossfades over Flame Audio. Web hosts can construct this with [requiresActivation](../src_audio_giant_toad_audio/GiantToadAudio/requiresActivation.md) and call [unlock](../src_audio_giant_toad_audio/GiantToadAudio/unlock.md) from their first pointer or keyboard gesture; requests are queued rather than lost.

<span class="name">[GiantToadAudioBackend](../src_audio_giant_toad_audio/GiantToadAudioBackend-class.md)</span>  

<span class="name">[GiantToadAudioHandle](../src_audio_giant_toad_audio/GiantToadAudioHandle-class.md)</span>  

<span class="name">[GiantToadAutosaveCoordinator](../src_runtime_giant_toad_persistence/GiantToadAutosaveCoordinator-class.md)</span>  
Coalesces frequent save requests and exposes an explicit lifecycle flush.

<span class="name">[GiantToadAutotile](../src_tilemap_giant_toad_grid/GiantToadAutotile-class.md)</span>  
Bitmask generation for `bitmask16` and gated eight-neighbour blob rules.

<span class="name">[GiantToadAutotileRules](../src_tilemap_giant_toad_map_runtime/GiantToadAutotileRules-class.md)</span>  
Resolves autotile masks into authored tile ids.

<span class="name">[GiantToadBehaviorFixture](../src_debug_giant_toad_behavior_fixture/GiantToadBehaviorFixture-class.md)<span class="signature">\<<span class="type-parameter">S</span>\></span></span>  
Runs fixed-timestep behavioral fixtures without coupling them to the renderer. Fixtures compare game state and lifecycle outcomes rather than exact pixels.

<span class="name">[GiantToadBehaviorInput](../src_debug_giant_toad_behavior_fixture/GiantToadBehaviorInput-class.md)<span class="signature">\<<span class="type-parameter">S</span>\></span></span>  
One deterministic input scheduled before a simulation tick.

<span class="name">[GiantToadBehaviorResult](../src_debug_giant_toad_behavior_fixture/GiantToadBehaviorResult-class.md)</span>  
Serializable result of a behavior fixture.

<span class="name">[GiantToadCapabilities](../src_runtime_giant_toad_capabilities/GiantToadCapabilities-class.md)</span>  
Explicit platform contract used by examples and production fallback paths.

<span class="name">[GiantToadCapabilityStatus](../src_runtime_giant_toad_capabilities/GiantToadCapabilityStatus-class.md)</span>  

<span class="name">[GiantToadCell](../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span>  
An immutable integer cell coordinate.

<span class="name">[GiantToadChunkKey](../src_tilemap_giant_toad_map_document/GiantToadChunkKey-class.md)</span>  
A stable coordinate key for a sparse tile chunk.

<span class="name">[GiantToadCloudShadowShader](../src_render_giant_toad_surface_shaders/GiantToadCloudShadowShader-class.md)</span>  

<span class="name">[GiantToadCollisionWorld](../src_world_giant_toad_collision_world/GiantToadCollisionWorld-class.md)</span>  
Sparse broadphase-independent rectangle world for small authored collision sets. Entity-to-entity hitboxes remain Flame collision components.

<span class="name">[GiantToadConditionTask](../src_gameplay_giant_toad_tasks/GiantToadConditionTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadControl](../src_input_giant_toad_action_input/GiantToadControl-class.md)</span>  
Stable physical-control identifiers shared by bindings and platform adapters.

<span class="name">[GiantToadDebugOverlay](../src_debug_giant_toad_debug_overlay/GiantToadDebugOverlay-class.md)</span>  
World-independent Flame component for deterministic pixel diagnostics.

<span class="name">[GiantToadDiagnostics](../src_debug_giant_toad_debug_overlay/GiantToadDiagnostics-class.md)</span>  
Named diagnostics evaluated only while the overlay is visible.

<span class="name">[GiantToadDialogue](../src_gameplay_giant_toad_dialogue/GiantToadDialogue-class.md)</span>  
Deterministic dialogue graph state independent of its Flutter presentation.

<span class="name">[GiantToadDialogueChoice](../src_gameplay_giant_toad_dialogue/GiantToadDialogueChoice-class.md)</span>  

<span class="name">[GiantToadDialogueNode](../src_gameplay_giant_toad_dialogue/GiantToadDialogueNode-class.md)</span>  

<span class="name">[GiantToadDirectionalAnimations](../src_render_giant_toad_directional_animation/GiantToadDirectionalAnimations-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Resolves authored 4/8-way states without owning Flame animation ticking.

<span class="name">[GiantToadDirectionalState](../src_render_giant_toad_directional_animation/GiantToadDirectionalState-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadEditorCamera](../src_giant_toad_editor_camera/GiantToadEditorCamera-class.md)</span>  
Editor-safe camera pan, zoom, and coordinate conversion helpers.

<span class="name">[GiantToadFlameAudioBackend](../src_audio_giant_toad_audio/GiantToadFlameAudioBackend-class.md)</span>  

<span class="name">[GiantToadFloatingText](../src_gameplay_giant_toad_game_feel/GiantToadFloatingText-class.md)</span>  
World-space floating label with deterministic velocity and lifetime.

<span class="name">[GiantToadGame](../src_giant_toad_game/GiantToadGame-class.md)<span class="signature">\<<span class="type-parameter">W extends dynamic</span>\></span></span>  
A Flame game using Giant Toad's default pixel-art resolution policy.

<span class="name">[GiantToadGrid](../src_tilemap_giant_toad_grid/GiantToadGrid-class.md)</span>  
Reusable integer grid math for sparse tilemaps.

<span class="name">[GiantToadGridBounds](../src_gameplay_giant_toad_pathfinding/GiantToadGridBounds-class.md)</span>  
Inclusive limits for a finite grid search.

<span class="name">[GiantToadGridStepper](../src_gameplay_giant_toad_grid_step/GiantToadGridStepper-class.md)</span>  

<span class="name">[GiantToadHitPause](../src_gameplay_giant_toad_game_feel/GiantToadHitPause-class.md)</span>  
Freezes simulation for a short hit-confirmation interval while allowing UI, flash, audio, and camera systems to keep receiving unscaled time.

<span class="name">[GiantToadJoystickActions](../src_input_giant_toad_action_input/GiantToadJoystickActions-class.md)</span>  
Polls Flame's standard `JoystickComponent` and forwards its normalized delta into semantic action bindings.

<span class="name">[GiantToadJumpAssist](../src_gameplay_giant_toad_game_feel/GiantToadJumpAssist-class.md)</span>  
Buffered jump and coyote-time state for deterministic platform controllers.

<span class="name">[GiantToadKeyboardActions](../src_input_giant_toad_action_input/GiantToadKeyboardActions-class.md)</span>  
Flame keyboard component that feeds a [GiantToadActionInput](../src_input_giant_toad_action_input/GiantToadActionInput-class.md). Add it to a game using `HasKeyboardHandlerComponents`.

<span class="name">[GiantToadLavaSurfaceShader](../src_render_giant_toad_surface_shaders/GiantToadLavaSurfaceShader-class.md)</span>  
Reusable Giant Toad runtime shader for animated lava tile surfaces.

<span class="name">[GiantToadLighting](../src_render_giant_toad_lighting/GiantToadLighting-class.md)</span>  
Deterministic pixel-art cast-shadow geometry.

<span class="name">[GiantToadLightingPostProcess](../src_render_giant_toad_pixel_post_process/GiantToadLightingPostProcess-class.md)</span>  
Lightweight low-resolution lighting convention implemented through Flame's post-process pipeline. Coordinates are in viewport space.

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

<span class="name">[GiantToadMemoryStore](../src_runtime_giant_toad_systems/GiantToadMemoryStore-class.md)</span>  
Deterministic in-memory [GiantToadStore](../src_runtime_giant_toad_systems/GiantToadStore-class.md), useful for tests and prototypes.

<span class="name">[GiantToadMovingPlatform](../src_world_giant_toad_tile_collision/GiantToadMovingPlatform-class.md)</span>  
A deterministic kinematic platform. Give platforms a lower `priority` than bodies so their [frameDelta](../src_world_giant_toad_tile_collision/GiantToadMovingPlatform/frameDelta.md) is ready before character updates.

<span class="name">[GiantToadObjectPool](../src_gameplay_giant_toad_object_pool/GiantToadObjectPool-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Explicit reusable-object pool for high-churn non-Component values.

<span class="name">[GiantToadPathAdapters](../src_gameplay_giant_toad_path_following/GiantToadPathAdapters-class.md)</span>  

<span class="name">[GiantToadPathfinding](../src_gameplay_giant_toad_pathfinding/GiantToadPathfinding-class.md)</span>  
Deterministic four-direction A\* over a bounded integer grid.

<span class="name">[GiantToadPathFollower](../src_gameplay_giant_toad_path_following/GiantToadPathFollower-class.md)</span>  

<span class="name">[GiantToadPerception](../src_gameplay_giant_toad_perception/GiantToadPerception-class.md)</span>  

<span class="name">[GiantToadPerceptionResult](../src_gameplay_giant_toad_perception/GiantToadPerceptionResult-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadPerceptionTarget](../src_gameplay_giant_toad_perception/GiantToadPerceptionTarget-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadPixelAnimationComponent](../src_render_giant_toad_pixel_sprites/GiantToadPixelAnimationComponent-class.md)</span>  
Standard Flame animation component configured for pixel rendering.

<span class="name">[GiantToadPixelatePostProcess](../src_render_giant_toad_pixel_post_process/GiantToadPixelatePostProcess-class.md)</span>  
Flame post-process that preserves a crisp low-resolution presentation.

<span class="name">[GiantToadPixelAtlas](../src_render_giant_toad_pixel_sprites/GiantToadPixelAtlas-class.md)</span>  
Flame sprite-sheet adapter that enforces integer frame dimensions while retaining Flame's Sprite and SpriteAnimation types.

<span class="name">[GiantToadPixelBody](../src_world_giant_toad_tile_collision/GiantToadPixelBody-class.md)</span>  
Kinematic Flame component using tile-grid movement while retaining a normal Flame hitbox for entity-to-entity collision callbacks.

<span class="name">[GiantToadPixelCameraController](../src_gameplay_giant_toad_pixel_camera/GiantToadPixelCameraController-class.md)</span>  
Pixel-oriented follow policy layered on Flame's CameraComponent/Viewfinder.

<span class="name">[GiantToadPixelCoordinates](../src_giant_toad_pixel_coordinates/GiantToadPixelCoordinates-class.md)</span>  
Pixel-grid coordinate helpers for Giant Toad's logical canvas.

<span class="name">[GiantToadPixelLight](../src_render_giant_toad_pixel_post_process/GiantToadPixelLight-class.md)</span>  
Screen-space pixel light used by [GiantToadLightingPostProcess](../src_render_giant_toad_pixel_post_process/GiantToadLightingPostProcess-class.md).

<span class="name">[GiantToadPixelSpriteComponent](../src_render_giant_toad_pixel_sprites/GiantToadPixelSpriteComponent-class.md)</span>  
Standard Flame sprite component with nearest-neighbor rendering and optional integer world placement.

<span class="name">[GiantToadPixelViewport](../src_giant_toad_pixel_viewport/GiantToadPixelViewport-class.md)</span>  
A fixed-resolution viewport that uses integer pixel scaling when possible.

<span class="name">[GiantToadPreferencesStore](../src_runtime_giant_toad_persistence/GiantToadPreferencesStore-class.md)</span>  
Cross-platform Flutter store backed by the asynchronous shared-preferences API. JSON encoding gives every platform the same supported value shapes.

<span class="name">[GiantToadPreloadableAudioBackend](../src_audio_giant_toad_audio/GiantToadPreloadableAudioBackend-class.md)</span>  
Optional backend contract for decoding short effects before gameplay.

<span class="name">[GiantToadProject](../src_project_giant_toad_project/GiantToadProject-class.md)</span>  
Versioned metadata for a typed Giant Toad pixel-art project.

<span class="name">[GiantToadRandom](../src_gameplay_giant_toad_random/GiantToadRandom-class.md)</span>  
Deterministic, state-serializable 32-bit RNG with identical Dart VM and web behavior.

<span class="name">[GiantToadRaycastHit](../src_world_giant_toad_collision_world/GiantToadRaycastHit-class.md)</span>  

<span class="name">[GiantToadRepeatTask](../src_gameplay_giant_toad_tasks/GiantToadRepeatTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadResolution](../src_giant_toad_resolution/GiantToadResolution-class.md)</span>  
The baseline logical dimensions for a [GiantToadGame](../src_giant_toad_game/GiantToadGame-class.md).

<span class="name">[GiantToadSaveData](../src_runtime_giant_toad_persistence/GiantToadSaveData-class.md)</span>  
Versioned JSON save payload.

<span class="name">[GiantToadSaveSlots](../src_runtime_giant_toad_persistence/GiantToadSaveSlots-class.md)</span>  
Named save slots with explicit schema migration.

<span class="name">[GiantToadSceneResources](../src_scenes_giant_toad_scenes/GiantToadSceneResources-class.md)</span>  
Resources tied to a scene route and released when Flame unmounts it.

<span class="name">[GiantToadSceneRoute](../src_scenes_giant_toad_scenes/GiantToadSceneRoute-class.md)</span>  
Flame `Route` with explicit typed scene activation and resource lifecycle.

<span class="name">[GiantToadSceneRouter](../src_scenes_giant_toad_scenes/GiantToadSceneRouter-class.md)</span>  
Small naming convenience over Flame's standard `RouterComponent`.

<span class="name">[GiantToadScreenFlash](../src_gameplay_giant_toad_game_feel/GiantToadScreenFlash-class.md)</span>  
Time-based screen flash state suitable for a Flame overlay component.

<span class="name">[GiantToadSelectorTask](../src_gameplay_giant_toad_tasks/GiantToadSelectorTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadSequenceTask](../src_gameplay_giant_toad_tasks/GiantToadSequenceTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadSettings](../src_runtime_giant_toad_persistence/GiantToadSettings-class.md)</span>  
Typed settings facade over the same platform store.

<span class="name">[GiantToadShadowOptions](../src_render_giant_toad_lighting/GiantToadShadowOptions-class.md)</span>  

<span class="name">[GiantToadShadowPoint](../src_render_giant_toad_lighting/GiantToadShadowPoint-class.md)</span>  

<span class="name">[GiantToadShadowRect](../src_render_giant_toad_lighting/GiantToadShadowRect-class.md)</span>  

<span class="name">[GiantToadShadowShape](../src_render_giant_toad_lighting/GiantToadShadowShape-class.md)</span>  

<span class="name">[GiantToadShadowTriangle](../src_render_giant_toad_lighting/GiantToadShadowTriangle-class.md)</span>  

<span class="name">[GiantToadShorelineFoamShader](../src_render_giant_toad_surface_shaders/GiantToadShorelineFoamShader-class.md)</span>  

<span class="name">[GiantToadSteering](../src_gameplay_giant_toad_steering/GiantToadSteering-class.md)</span>  
Allocation-conscious steering helpers for Flame position and velocity code.

<span class="name">[GiantToadStore](../src_runtime_giant_toad_systems/GiantToadStore-class.md)</span>  
Storage abstraction suitable for game settings and save-data backends.

<span class="name">[GiantToadTask](../src_gameplay_giant_toad_tasks/GiantToadTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadTaskComponent](../src_gameplay_giant_toad_tasks/GiantToadTaskComponent-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

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

<span class="name">[GiantToadTypewriterDialogue](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Deterministic typewriter/choice presentation state shared by keyboard, controller, pointer, and Flutter overlay renderers.

<span class="name">[GiantToadTypewriterLine](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterLine-class.md)</span>  

<span class="name">[GiantToadValueChoice](../src_gameplay_giant_toad_dialogue/GiantToadValueChoice-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadViewportMetrics](../src_giant_toad_pixel_viewport/GiantToadViewportMetrics-class.md)</span>  
The calculated placement of a logical pixel canvas within a game canvas.

<span class="name">[GiantToadWaitTask](../src_gameplay_giant_toad_tasks/GiantToadWaitTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadWaterSurfaceShader](../src_render_giant_toad_surface_shaders/GiantToadWaterSurfaceShader-class.md)</span>  

<span class="name">[GiantToadWorker](../src_runtime_giant_toad_systems/GiantToadWorker-class.md)</span>  
Runs a sendable operation outside the UI isolate.

<span class="name">[GiantToadWorldCollider](../src_world_giant_toad_collision_world/GiantToadWorldCollider-class.md)</span>  

<span class="name">[GiantToadWorldHit](../src_world_giant_toad_collision_world/GiantToadWorldHit-class.md)</span>  

<span class="name">[GiantToadWorldMoveResult](../src_world_giant_toad_collision_world/GiantToadWorldMoveResult-class.md)</span>  

</div>

<div>

## Enums

<span class="name">[GiantToadAudioBus](../src_audio_giant_toad_audio/GiantToadAudioBus.md)</span>  

<span class="name">[GiantToadCapability](../src_runtime_giant_toad_capabilities/GiantToadCapability.md)</span>  

<span class="name">[GiantToadFacing](../src_render_giant_toad_directional_animation/GiantToadFacing.md)</span>  

<span class="name">[GiantToadGridDirection](../src_gameplay_giant_toad_grid_step/GiantToadGridDirection.md)</span>  

<span class="name">[GiantToadGridStepResult](../src_gameplay_giant_toad_grid_step/GiantToadGridStepResult.md)</span>  

<span class="name">[GiantToadLightShape](../src_render_giant_toad_ambient_lighting/GiantToadLightShape.md)</span>  

<span class="name">[GiantToadPathCompletion](../src_gameplay_giant_toad_path_following/GiantToadPathCompletion.md)</span>  

<span class="name">[GiantToadPlatformKind](../src_runtime_giant_toad_capabilities/GiantToadPlatformKind.md)</span>  
Runtime families that materially affect game feature availability.

<span class="name">[GiantToadSampling](../src_render_giant_toad_pixel_sprites/GiantToadSampling.md)</span>  

<span class="name">[GiantToadTaskStatus](../src_gameplay_giant_toad_tasks/GiantToadTaskStatus.md)</span>  

<span class="name">[GiantToadTileMaterial](../src_world_giant_toad_tile_collision/GiantToadTileMaterial.md)</span>  
Collision behavior authored on a tile cell.

<span class="name">[GiantToadViewportMode](../src_giant_toad_pixel_viewport/GiantToadViewportMode.md)</span>  
Controls whether the logical canvas is fixed or reveals extra world height.

</div>

<div>

## Mixins

<span class="name">[GiantToadPixelPaint](../src_render_giant_toad_pixel_sprites/GiantToadPixelPaint-mixin.md)</span>  

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

<span class="name">[GiantToadSaveMigration](../src_runtime_giant_toad_persistence/GiantToadSaveMigration.md)</span><span class="signature"> <span class="returntype parameter">= [GiantToadSaveData](../src_runtime_giant_toad_persistence/GiantToadSaveData-class.md) Function<span class="signature">(<span id="param-oldData" class="parameter"><span class="type-annotation">[GiantToadSaveData](../src_runtime_giant_toad_persistence/GiantToadSaveData-class.md)</span> <span class="parameter-name">oldData</span></span>)</span></span> </span>  

<span class="name">[GiantToadTileRenderer](../src_tilemap_giant_toad_tilemap_component/GiantToadTileRenderer.md)</span><span class="signature"> <span class="returntype parameter">= void Function<span class="signature">(<span id="param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span>, </span><span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span>, </span><span id="param-tileX" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileX</span>, </span><span id="param-tileY" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileY</span>, </span><span id="param-tileSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span></span>)</span></span> </span>  
Draws one authored map cell at its integer tile coordinates.

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  giant_toad.dart

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

##### giant_toad library

</div>
