<div>

<div>

# <span class="kind-library">giant_toad_runtime</span> library

</div>

<div>

Input, audio, persistence, scene, project, and runtime service APIs.

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

<span class="name">[GiantToadAssets](../giant_toad/GiantToadAssets-class.md)</span>  
Canonical project asset roots. Games may add folders but must not reinterpret these paths across platforms.

<span class="name">[GiantToadAudio](../giant_toad/GiantToadAudio-class.md)</span>  
Audio buses and music crossfades over Flame Audio. Web hosts can construct this with [requiresActivation](../giant_toad/GiantToadAudio/requiresActivation.md) and call [unlock](../giant_toad/GiantToadAudio/unlock.md) from their first pointer or keyboard gesture; requests are queued rather than lost.

<span class="name">[GiantToadAudioBackend](../giant_toad/GiantToadAudioBackend-class.md)</span>  

<span class="name">[GiantToadAudioHandle](../giant_toad/GiantToadAudioHandle-class.md)</span>  

<span class="name">[GiantToadAutosaveCoordinator](../giant_toad/GiantToadAutosaveCoordinator-class.md)</span>  
Coalesces frequent save requests and exposes an explicit lifecycle flush.

<span class="name">[GiantToadCapabilities](../giant_toad/GiantToadCapabilities-class.md)</span>  
Explicit platform contract used by examples and production fallback paths.

<span class="name">[GiantToadCapabilityStatus](../giant_toad/GiantToadCapabilityStatus-class.md)</span>  

<span class="name">[GiantToadControl](../giant_toad/GiantToadControl-class.md)</span>  
Stable physical-control identifiers shared by bindings and platform adapters.

<span class="name">[GiantToadFlameAudioBackend](../giant_toad/GiantToadFlameAudioBackend-class.md)</span>  

<span class="name">[GiantToadJoystickActions](../giant_toad/GiantToadJoystickActions-class.md)</span>  
Polls Flame's standard [JoystickComponent](https://pub.dev/documentation/flame/1.38.0/input/JoystickComponent-class.md) and forwards its normalized delta into semantic action bindings.

<span class="name">[GiantToadKeyboardActions](../giant_toad/GiantToadKeyboardActions-class.md)</span>  
Flame keyboard component that feeds a [GiantToadActionInput](../giant_toad/GiantToadActionInput-class.md). Add it to a game using `HasKeyboardHandlerComponents`.

<span class="name">[GiantToadMemoryStore](../giant_toad/GiantToadMemoryStore-class.md)</span>  
Deterministic in-memory [GiantToadStore](../giant_toad/GiantToadStore-class.md), useful for tests and prototypes.

<span class="name">[GiantToadPreferencesStore](../giant_toad/GiantToadPreferencesStore-class.md)</span>  
Cross-platform Flutter store backed by the asynchronous shared-preferences API. JSON encoding gives every platform the same supported value shapes.

<span class="name">[GiantToadPreloadableAudioBackend](../giant_toad/GiantToadPreloadableAudioBackend-class.md)</span>  
Optional backend contract for decoding short effects before gameplay.

<span class="name">[GiantToadProject](../giant_toad/GiantToadProject-class.md)</span>  
Versioned metadata for a typed Giant Toad pixel-art project.

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

<span class="name">[GiantToadSettings](../giant_toad/GiantToadSettings-class.md)</span>  
Typed settings facade over the same platform store.

<span class="name">[GiantToadStore](../giant_toad/GiantToadStore-class.md)</span>  
Storage abstraction suitable for game settings and save-data backends.

<span class="name">[GiantToadWorker](../giant_toad/GiantToadWorker-class.md)</span>  
Runs a sendable operation outside the UI isolate.

</div>

<div>

## Enums

<span class="name">[GiantToadAudioBus](../giant_toad/GiantToadAudioBus.md)</span>  

<span class="name">[GiantToadCapability](../giant_toad/GiantToadCapability.md)</span>  

<span class="name">[GiantToadPlatformKind](../giant_toad/GiantToadPlatformKind.md)</span>  
Runtime families that materially affect game feature availability.

</div>

<div>

## Typedefs

<span class="name">[GiantToadSaveMigration](../giant_toad/GiantToadSaveMigration.md)</span><span class="signature"> <span class="returntype parameter">= [GiantToadSaveData](../giant_toad/GiantToadSaveData-class.md) Function<span class="signature">(<span id="param-oldData" class="parameter"><span class="type-annotation">[GiantToadSaveData](../giant_toad/GiantToadSaveData-class.md)</span> <span class="parameter-name">oldData</span></span>)</span></span> </span>  

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  giant_toad_runtime.dart

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

##### giant_toad_runtime library

</div>
