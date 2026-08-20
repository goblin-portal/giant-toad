<div>

<div>

# <span class="kind-library">giant_toad</span> library

</div>

<div>

## Classes

<span class="name">[GiantToadAction](../giant_toad/GiantToadAction-class.md)</span>  
A semantic input action, independent of keyboard, touch, or controller APIs.

<span class="name">[GiantToadActionInput](../giant_toad/GiantToadActionInput-class.md)</span>  
Device-neutral input sink for keyboard, pointer, joystick, and gamepad adapters. Platform gamepad packages can forward events here without entering the semantic action layer.

<span class="name">[GiantToadActionMap](../giant_toad/GiantToadActionMap-class.md)</span>  
Maps physical control identifiers to semantic game actions.

<span class="name">[GiantToadActionMapCodec](../giant_toad/GiantToadActionMapCodec-class.md)</span>  
Encodes persisted action bindings without coupling to a storage backend.

<span class="name">[GiantToadActionState](../giant_toad/GiantToadActionState-class.md)</span>  
Stores the currently held physical controls and exposes semantic actions.

<span class="name">[GiantToadActionTask](../giant_toad/GiantToadActionTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadAmbientLight](../giant_toad/GiantToadAmbientLight-class.md)</span>  

<span class="name">[GiantToadAmbientLightComponent](../giant_toad/GiantToadAmbientLightComponent-class.md)</span>  
Pixel-safe ambient mask. Mount in a camera viewport and supply positions in that component's local coordinate space.

<span class="name">[GiantToadAnimationEvent](../giant_toad/GiantToadAnimationEvent-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Named frame event emitted by [GiantToadAnimationStates](../giant_toad/GiantToadAnimationStates-class.md).

<span class="name">[GiantToadAnimationStates](../giant_toad/GiantToadAnimationStates-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Thin state/event policy over Flame's [SpriteAnimationGroupComponent](https://pub.dev/documentation/flame/1.38.0/components/SpriteAnimationGroupComponent-class.md).

<span class="name">[GiantToadAreaChange](../giant_toad/GiantToadAreaChange-class.md)</span>  
Enter/exit delta produced by [GiantToadAreaTracker](../giant_toad/GiantToadAreaTracker-class.md).

<span class="name">[GiantToadAreaDocument](../giant_toad/GiantToadAreaDocument-class.md)</span>  
An optional sparse-map `areas.json` document.

<span class="name">[GiantToadAreaDocumentCodec](../giant_toad/GiantToadAreaDocumentCodec-class.md)</span>  
Decodes and encodes the JSON text stored in an `areas.json` file.

<span class="name">[GiantToadAreaTracker](../giant_toad/GiantToadAreaTracker-class.md)</span>  
Tracks authored areas occupied by one cell-space subject.

<span class="name">[GiantToadAssets](../giant_toad/GiantToadAssets-class.md)</span>  
Canonical project asset roots. Games may add folders but must not reinterpret these paths across platforms.

<span class="name">[GiantToadAtlasTileRenderer](../giant_toad/GiantToadAtlasTileRenderer-class.md)</span>  
Nearest-neighbor atlas renderer usable as a [GiantToadTileRenderer](../giant_toad/GiantToadTileRenderer.md).

<span class="name">[GiantToadAudio](../giant_toad/GiantToadAudio-class.md)</span>  
Audio buses and music crossfades over Flame Audio. Web hosts can construct this with [requiresActivation](../giant_toad/GiantToadAudio/requiresActivation.md) and call [unlock](../giant_toad/GiantToadAudio/unlock.md) from their first pointer or keyboard gesture; requests are queued rather than lost.

<span class="name">[GiantToadAudioBackend](../giant_toad/GiantToadAudioBackend-class.md)</span>  

<span class="name">[GiantToadAudioHandle](../giant_toad/GiantToadAudioHandle-class.md)</span>  

<span class="name">[GiantToadAutosaveCoordinator](../giant_toad/GiantToadAutosaveCoordinator-class.md)</span>  
Coalesces frequent save requests and exposes an explicit lifecycle flush.

<span class="name">[GiantToadAutotile](../giant_toad/GiantToadAutotile-class.md)</span>  
Bitmask generation for `bitmask16` and gated eight-neighbour blob rules.

<span class="name">[GiantToadAutotileRules](../giant_toad/GiantToadAutotileRules-class.md)</span>  
Resolves autotile masks into authored tile ids.

<span class="name">[GiantToadBehaviorFixture](../giant_toad/GiantToadBehaviorFixture-class.md)<span class="signature">\<<span class="type-parameter">S</span>\></span></span>  
Runs fixed-timestep behavioral fixtures without coupling them to the renderer. Fixtures compare game state and lifecycle outcomes rather than exact pixels.

<span class="name">[GiantToadBehaviorInput](../giant_toad/GiantToadBehaviorInput-class.md)<span class="signature">\<<span class="type-parameter">S</span>\></span></span>  
One deterministic input scheduled before a simulation tick.

<span class="name">[GiantToadBehaviorResult](../giant_toad/GiantToadBehaviorResult-class.md)</span>  
Serializable result of a behavior fixture.

<span class="name">[GiantToadCapabilities](../giant_toad/GiantToadCapabilities-class.md)</span>  
Explicit platform contract used by examples and production fallback paths.

<span class="name">[GiantToadCapabilityStatus](../giant_toad/GiantToadCapabilityStatus-class.md)</span>  

<span class="name">[GiantToadCell](../giant_toad/GiantToadCell-class.md)</span>  
An immutable integer cell coordinate.

<span class="name">[GiantToadChunkKey](../giant_toad/GiantToadChunkKey-class.md)</span>  
A stable coordinate key for a sparse tile chunk.

<span class="name">[GiantToadCloudShadowShader](../giant_toad/GiantToadCloudShadowShader-class.md)</span>  

<span class="name">[GiantToadCollisionWorld](../giant_toad/GiantToadCollisionWorld-class.md)</span>  
Sparse broadphase-independent rectangle world for small authored collision sets. Entity-to-entity hitboxes remain Flame collision components.

<span class="name">[GiantToadConditionTask](../giant_toad/GiantToadConditionTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadControl](../giant_toad/GiantToadControl-class.md)</span>  
Stable physical-control identifiers shared by bindings and platform adapters.

<span class="name">[GiantToadDebugOverlay](../giant_toad/GiantToadDebugOverlay-class.md)</span>  
World-independent Flame component for deterministic pixel diagnostics.

<span class="name">[GiantToadDiagnostics](../giant_toad/GiantToadDiagnostics-class.md)</span>  
Named diagnostics evaluated only while the overlay is visible.

<span class="name">[GiantToadDialogue](../giant_toad/GiantToadDialogue-class.md)</span>  
Deterministic dialogue graph state independent of its Flutter presentation.

<span class="name">[GiantToadDialogueChoice](../giant_toad/GiantToadDialogueChoice-class.md)</span>  

<span class="name">[GiantToadDialogueNode](../giant_toad/GiantToadDialogueNode-class.md)</span>  

<span class="name">[GiantToadDirectionalAnimations](../giant_toad/GiantToadDirectionalAnimations-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Resolves authored 4/8-way states without owning Flame animation ticking.

<span class="name">[GiantToadDirectionalState](../giant_toad/GiantToadDirectionalState-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadEditorCamera](../giant_toad/GiantToadEditorCamera-class.md)</span>  
Editor-safe camera pan, zoom, and coordinate conversion helpers.

<span class="name">[GiantToadFlameAudioBackend](../giant_toad/GiantToadFlameAudioBackend-class.md)</span>  

<span class="name">[GiantToadFloatingText](../giant_toad/GiantToadFloatingText-class.md)</span>  
World-space floating label with deterministic velocity and lifetime.

<span class="name">[GiantToadGame](../giant_toad/GiantToadGame-class.md)<span class="signature">\<<span class="type-parameter">W extends [World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span></span>  
A Flame game using Giant Toad's default pixel-art resolution policy.

<span class="name">[GiantToadGrid](../giant_toad/GiantToadGrid-class.md)</span>  
Reusable integer grid math for sparse tilemaps.

<span class="name">[GiantToadGridBounds](../giant_toad/GiantToadGridBounds-class.md)</span>  
Inclusive limits for a finite grid search.

<span class="name">[GiantToadGridStepper](../giant_toad/GiantToadGridStepper-class.md)</span>  

<span class="name">[GiantToadHitPause](../giant_toad/GiantToadHitPause-class.md)</span>  
Freezes simulation for a short hit-confirmation interval while allowing UI, flash, audio, and camera systems to keep receiving unscaled time.

<span class="name">[GiantToadJoystickActions](../giant_toad/GiantToadJoystickActions-class.md)</span>  
Polls Flame's standard [JoystickComponent](https://pub.dev/documentation/flame/1.38.0/input/JoystickComponent-class.md) and forwards its normalized delta into semantic action bindings.

<span class="name">[GiantToadJumpAssist](../giant_toad/GiantToadJumpAssist-class.md)</span>  
Buffered jump and coyote-time state for deterministic platform controllers.

<span class="name">[GiantToadKeyboardActions](../giant_toad/GiantToadKeyboardActions-class.md)</span>  
Flame keyboard component that feeds a [GiantToadActionInput](../giant_toad/GiantToadActionInput-class.md). Add it to a game using `HasKeyboardHandlerComponents`.

<span class="name">[GiantToadLavaSurfaceShader](../giant_toad/GiantToadLavaSurfaceShader-class.md)</span>  
Reusable Giant Toad runtime shader for animated lava tile surfaces.

<span class="name">[GiantToadLighting](../giant_toad/GiantToadLighting-class.md)</span>  
Deterministic pixel-art cast-shadow geometry.

<span class="name">[GiantToadLightingPostProcess](../giant_toad/GiantToadLightingPostProcess-class.md)</span>  
Lightweight low-resolution lighting convention implemented through Flame's post-process pipeline. Coordinates are in viewport space.

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

<span class="name">[GiantToadMemoryStore](../giant_toad/GiantToadMemoryStore-class.md)</span>  
Deterministic in-memory [GiantToadStore](../giant_toad/GiantToadStore-class.md), useful for tests and prototypes.

<span class="name">[GiantToadMovingPlatform](../giant_toad/GiantToadMovingPlatform-class.md)</span>  
A deterministic kinematic platform. Give platforms a lower [priority](https://pub.dev/documentation/flame/1.38.0/components/Component/priority.md) than bodies so their [frameDelta](../giant_toad/GiantToadMovingPlatform/frameDelta.md) is ready before character updates.

<span class="name">[GiantToadObjectPool](../giant_toad/GiantToadObjectPool-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Explicit reusable-object pool for high-churn non-Component values.

<span class="name">[GiantToadPathAdapters](../giant_toad/GiantToadPathAdapters-class.md)</span>  

<span class="name">[GiantToadPathfinding](../giant_toad/GiantToadPathfinding-class.md)</span>  
Deterministic four-direction A\* over a bounded integer grid.

<span class="name">[GiantToadPathFollower](../giant_toad/GiantToadPathFollower-class.md)</span>  

<span class="name">[GiantToadPerception](../giant_toad/GiantToadPerception-class.md)</span>  

<span class="name">[GiantToadPerceptionResult](../giant_toad/GiantToadPerceptionResult-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadPerceptionTarget](../giant_toad/GiantToadPerceptionTarget-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadPixelAnimationComponent](../giant_toad/GiantToadPixelAnimationComponent-class.md)</span>  
Standard Flame animation component configured for pixel rendering.

<span class="name">[GiantToadPixelatePostProcess](../giant_toad/GiantToadPixelatePostProcess-class.md)</span>  
Flame post-process that preserves a crisp low-resolution presentation.

<span class="name">[GiantToadPixelAtlas](../giant_toad/GiantToadPixelAtlas-class.md)</span>  
Flame sprite-sheet adapter that enforces integer frame dimensions while retaining Flame's Sprite and SpriteAnimation types.

<span class="name">[GiantToadPixelBody](../giant_toad/GiantToadPixelBody-class.md)</span>  
Kinematic Flame component using tile-grid movement while retaining a normal Flame hitbox for entity-to-entity collision callbacks.

<span class="name">[GiantToadPixelCameraController](../giant_toad/GiantToadPixelCameraController-class.md)</span>  
Pixel-oriented follow policy layered on Flame's CameraComponent/Viewfinder.

<span class="name">[GiantToadPixelCoordinates](../giant_toad/GiantToadPixelCoordinates-class.md)</span>  
Pixel-grid coordinate helpers for Giant Toad's logical canvas.

<span class="name">[GiantToadPixelLight](../giant_toad/GiantToadPixelLight-class.md)</span>  
Screen-space pixel light used by [GiantToadLightingPostProcess](../giant_toad/GiantToadLightingPostProcess-class.md).

<span class="name">[GiantToadPixelSpriteComponent](../giant_toad/GiantToadPixelSpriteComponent-class.md)</span>  
Standard Flame sprite component with nearest-neighbor rendering and optional integer world placement.

<span class="name">[GiantToadPixelViewport](../giant_toad/GiantToadPixelViewport-class.md)</span>  
A fixed-resolution viewport that uses integer pixel scaling when possible.

<span class="name">[GiantToadPreferencesStore](../giant_toad/GiantToadPreferencesStore-class.md)</span>  
Cross-platform Flutter store backed by the asynchronous shared-preferences API. JSON encoding gives every platform the same supported value shapes.

<span class="name">[GiantToadPreloadableAudioBackend](../giant_toad/GiantToadPreloadableAudioBackend-class.md)</span>  
Optional backend contract for decoding short effects before gameplay.

<span class="name">[GiantToadProject](../giant_toad/GiantToadProject-class.md)</span>  
Versioned metadata for a typed Giant Toad pixel-art project.

<span class="name">[GiantToadRandom](../giant_toad/GiantToadRandom-class.md)</span>  
Deterministic, state-serializable 32-bit RNG with identical Dart VM and web behavior.

<span class="name">[GiantToadRaycastHit](../giant_toad/GiantToadRaycastHit-class.md)</span>  

<span class="name">[GiantToadRepeatTask](../giant_toad/GiantToadRepeatTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadResolution](../giant_toad/GiantToadResolution-class.md)</span>  
The baseline logical dimensions for a [GiantToadGame](../giant_toad/GiantToadGame-class.md).

<span class="name">[GiantToadSaveData](../giant_toad/GiantToadSaveData-class.md)</span>  
Versioned JSON save payload.

<span class="name">[GiantToadSaveSlots](../giant_toad/GiantToadSaveSlots-class.md)</span>  
Named save slots with explicit schema migration.

<span class="name">[GiantToadSceneResources](../giant_toad/GiantToadSceneResources-class.md)</span>  
Resources tied to a scene route and released when Flame unmounts it.

<span class="name">[GiantToadSceneRoute](../giant_toad/GiantToadSceneRoute-class.md)</span>  
Flame [Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md) with explicit typed scene activation and resource lifecycle.

<span class="name">[GiantToadSceneRouter](../giant_toad/GiantToadSceneRouter-class.md)</span>  
Small naming convenience over Flame's standard [RouterComponent](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent-class.md).

<span class="name">[GiantToadScreenFlash](../giant_toad/GiantToadScreenFlash-class.md)</span>  
Time-based screen flash state suitable for a Flame overlay component.

<span class="name">[GiantToadSelectorTask](../giant_toad/GiantToadSelectorTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadSequenceTask](../giant_toad/GiantToadSequenceTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadSettings](../giant_toad/GiantToadSettings-class.md)</span>  
Typed settings facade over the same platform store.

<span class="name">[GiantToadShadowOptions](../giant_toad/GiantToadShadowOptions-class.md)</span>  

<span class="name">[GiantToadShadowPoint](../giant_toad/GiantToadShadowPoint-class.md)</span>  

<span class="name">[GiantToadShadowRect](../giant_toad/GiantToadShadowRect-class.md)</span>  

<span class="name">[GiantToadShadowShape](../giant_toad/GiantToadShadowShape-class.md)</span>  

<span class="name">[GiantToadShadowTriangle](../giant_toad/GiantToadShadowTriangle-class.md)</span>  

<span class="name">[GiantToadShorelineFoamShader](../giant_toad/GiantToadShorelineFoamShader-class.md)</span>  

<span class="name">[GiantToadSteering](../giant_toad/GiantToadSteering-class.md)</span>  
Allocation-conscious steering helpers for Flame position and velocity code.

<span class="name">[GiantToadStore](../giant_toad/GiantToadStore-class.md)</span>  
Storage abstraction suitable for game settings and save-data backends.

<span class="name">[GiantToadTask](../giant_toad/GiantToadTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadTaskComponent](../giant_toad/GiantToadTaskComponent-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

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

<span class="name">[GiantToadTypewriterDialogue](../giant_toad/GiantToadTypewriterDialogue-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Deterministic typewriter/choice presentation state shared by keyboard, controller, pointer, and Flutter overlay renderers.

<span class="name">[GiantToadTypewriterLine](../giant_toad/GiantToadTypewriterLine-class.md)</span>  

<span class="name">[GiantToadValueChoice](../giant_toad/GiantToadValueChoice-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadViewportMetrics](../giant_toad/GiantToadViewportMetrics-class.md)</span>  
The calculated placement of a logical pixel canvas within a game canvas.

<span class="name">[GiantToadWaitTask](../giant_toad/GiantToadWaitTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadWaterSurfaceShader](../giant_toad/GiantToadWaterSurfaceShader-class.md)</span>  

<span class="name">[GiantToadWorker](../giant_toad/GiantToadWorker-class.md)</span>  
Runs a sendable operation outside the UI isolate.

<span class="name">[GiantToadWorldCollider](../giant_toad/GiantToadWorldCollider-class.md)</span>  

<span class="name">[GiantToadWorldHit](../giant_toad/GiantToadWorldHit-class.md)</span>  

<span class="name">[GiantToadWorldMoveResult](../giant_toad/GiantToadWorldMoveResult-class.md)</span>  

</div>

<div>

## Enums

<span class="name">[GiantToadAudioBus](../giant_toad/GiantToadAudioBus.md)</span>  

<span class="name">[GiantToadCapability](../giant_toad/GiantToadCapability.md)</span>  

<span class="name">[GiantToadFacing](../giant_toad/GiantToadFacing.md)</span>  

<span class="name">[GiantToadGridDirection](../giant_toad/GiantToadGridDirection.md)</span>  

<span class="name">[GiantToadGridStepResult](../giant_toad/GiantToadGridStepResult.md)</span>  

<span class="name">[GiantToadLightShape](../giant_toad/GiantToadLightShape.md)</span>  

<span class="name">[GiantToadPathCompletion](../giant_toad/GiantToadPathCompletion.md)</span>  

<span class="name">[GiantToadPlatformKind](../giant_toad/GiantToadPlatformKind.md)</span>  
Runtime families that materially affect game feature availability.

<span class="name">[GiantToadSampling](../giant_toad/GiantToadSampling.md)</span>  

<span class="name">[GiantToadTaskStatus](../giant_toad/GiantToadTaskStatus.md)</span>  

<span class="name">[GiantToadTileMaterial](../giant_toad/GiantToadTileMaterial.md)</span>  
Collision behavior authored on a tile cell.

<span class="name">[GiantToadViewportMode](../giant_toad/GiantToadViewportMode.md)</span>  
Controls whether the logical canvas is fixed or reveals extra world height.

</div>

<div>

## Mixins

<span class="name">[GiantToadPixelPaint](../giant_toad/GiantToadPixelPaint-mixin.md)</span>  

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

<span class="name">[GiantToadSaveMigration](../giant_toad/GiantToadSaveMigration.md)</span><span class="signature"> <span class="returntype parameter">= [GiantToadSaveData](../giant_toad/GiantToadSaveData-class.md) Function<span class="signature">(<span id="param-oldData" class="parameter"><span class="type-annotation">[GiantToadSaveData](../giant_toad/GiantToadSaveData-class.md)</span> <span class="parameter-name">oldData</span></span>)</span></span> </span>  

<span class="name">[GiantToadTileRenderer](../giant_toad/GiantToadTileRenderer.md)</span><span class="signature"> <span class="returntype parameter">= void Function<span class="signature">(<span id="param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span>, </span><span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../giant_toad/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span>, </span><span id="param-tileX" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileX</span>, </span><span id="param-tileY" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileY</span>, </span><span id="param-tileSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span></span>)</span></span> </span>  
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

</div>

<div>

##### giant_toad library

</div>
