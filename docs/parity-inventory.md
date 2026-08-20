# Behavioral parity inventory

This inventory measures **features and observable behavior**, not pixel-perfect
rendering. A visual check passes when the correct world, entities, UI state, and
transitions are legible and structurally present; colors, spacing, fonts, and
individual pixels may differ.

Status meanings:

- **Complete** — typed Dart/Flame implementation and automated behavioral test.
- **Partial** — useful implementation exists, but the referenced game does not
  exercise the whole original behavior.
- **Flame** — use the named Flame facility directly; no Giant Toad duplicate.
- **Missing** — implementation or executable evidence is still required.
- **Intentional** — unsupported or deliberately replaced, with rationale.

## Example inventory

| Canonical example | Original | Nim | Dart | Required behavioral evidence |
|---|---:|---:|---|---|
| minimal | yes | yes | Complete | title/game/pause flow, camera, animation, six coins, particles/audio/dialogue, saves and HUD tween |
| top-down-starter | yes | yes | Complete | 640-pixel world, actions, swept collision, bounded camera, animated atlas hero, coins/audio/saves, sign dialogue, portal reset, lighting and F2/F3 diagnostics |
| responsive-viewport | yes | yes | Complete | expanding viewport, resize history, responsive HUD, checkerboard world, movement and camera framing |
| gameplay-systems | yes | yes | Complete | canonical path fixture, steering, spark pool, autotile fixture and camera shake composition |
| adventure | yes | yes | Complete | exploration, dialogue, inventory/state transitions |
| benchmark | yes | yes | Complete | stable entity load and reported counters |
| fishing-hook | yes | yes | Complete | player/rod aim, 12-point Verlet rope, pull impulse, bounce/particles, pause/debug/tuning and shader fallback |
| import-rotation | yes | yes | Complete | modular components, player/sword transforms and rotation |
| rendering-lab | yes | yes | Complete | blend, sprites, text, particles and render ordering |
| system-apis | yes | yes | Complete | persistence, worker/platform and diagnostics behavior |
| ui-focus | yes | yes | Complete | keyboard/controller traversal and activation |
| ui-modular | yes | yes | Complete | independently owned modular overlay lifecycle |
| ui-showcase | yes | yes | Complete | complete control families and interaction states |
| animation-state | no | yes | Complete | named animation transitions and completion behavior |
| collision-benchmark | no | yes | Complete | collision load, deterministic count and timing report |
| dialogue-choice | no | yes | Complete | branching choice, conditions and terminal state |
| game-feel | no | yes | Complete | effects, hit-stop, trauma and deterministic reset |
| gameplay | no | yes | Complete | integrated game-loop systems |
| platformer | no | yes | Complete | gravity, slopes/one-way/moving platforms |
| scenes | no | yes | Complete | route transitions and reverse-order resource disposal |
| web-audio | no | yes | Complete | activation gate and queued playback |
| web-portable | no | yes | Complete | web-safe capability and persistence behavior |
| world-collision | no | yes | Complete | triggers, collision layers and movement resolution |

The Dart gallery may contain supporting samples in addition to these canonical
examples. Supporting samples do not count as converted examples unless their
behavioral contract matches a row above.

## Feature-domain inventory

| Domain | Dart status | Ownership and remaining evidence |
|---|---|---|
| Typed project/bootstrap/export | Complete | Giant Toad policy over normal Flutter targets; CLI tests |
| Pixel viewport/coordinates | Complete | Giant Toad integer scaling policy; resize/round-trip tests |
| Component tree/world/effects/timers/particles | Flame | Use Flame directly; examples must prove composition |
| Semantic actions | Partial | keyboard/pointer/joystick adapters exist; remapping, hot-plug and multi-pad tests remain |
| Sprites/regular atlases/animation | Complete | Flame objects with nearest-neighbor defaults |
| Camera | Complete | Flame camera controller with pixel follow/bounds/shake tests |
| Map Magnet document/edit model | Complete | sparse signed chunks and unknown-field retention |
| Map Magnet rendering | Partial | tilesets/objects/areas/autotiles exist; batching, animated tiles and streaming remain |
| Collision/controller | Complete | tile and named-world swept movement, slopes, one-way and moving platforms, triggers, layers, raycasts and merged rectangles are tested |
| Scenes | Complete | Flame RouterComponent plus owned-resource lifecycle tests |
| Audio | Partial | buses, activation and crossfade exist; real platform integration evidence remains |
| Persistence | Complete | namespaced preferences, schemas, migration, pending writes, backups, corruption recovery, autosave coalescing and lifecycle flush are tested |
| UI overlays | Partial | typed controls/focus exist; semantics, localization, virtualization and rebind UI remain |
| Dialogue | Complete | deterministic graph/typewriter state, conditions, choices, keyboard focus and in-game presentation are exercised by examples |
| Deterministic RNG | Complete | serializable state and stream behavior tested |
| Pathfinding/steering | Partial | core deterministic algorithms exist; weighted/chunk adapters and richer crowd behavior remain |
| Debug diagnostics | Complete | game-specific diagnostics and overlay; Dart timeline remains standard profiler |
| Lighting/post-processing | Partial | render-target/post-process recipes and real radial-light examples exist; platform shader execution remains part of external platform evidence |
| Platform capabilities | Missing | typed capability query and unsupported-reason contract needed |
| Release validation | Partial | build workflow exists; real runner artifacts, package score and stable SDK gate remain |

## Intentional differences

- No Wren, Lua, Luau, JSON method dispatch, or scripting VM.
- No replacement ECS, scene graph, timer framework, particle framework, effects
  framework, collision callback system, or sprite-animation runtime.
- Flutter owns accessible overlays, text editing, localization, focus, and
  semantics. Flame owns the game world and render loop.
- Behavioral parity is required. Pixel-perfect parity is not.

## Completion rule

A row becomes complete only when its typed implementation is used by an
executable example or fixture and an automated test verifies its important state
transitions, inputs, outputs, failure behavior, and lifecycle. Compilation or a
screenshot alone is insufficient.
