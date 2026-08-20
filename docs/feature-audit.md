# Giant Toad Dart feature audit

This audit compares Giant Toad Dart with the production domains in
`../giant-toad-nim` while treating Flame 1.38 and Flutter as the runtime
foundation. Matching Nim module-for-module is explicitly **not** the goal.
Giant Toad Dart should add pixel-art policy, integrated workflows, and missing
game systems without hiding or renaming good Flame APIs.

## Product boundary

Giant Toad Dart is a typed Dart/Flame pixel-art engine. It has no scripting VM.
The removed Wren bridge duplicated lifecycle and platform work, excluded normal
Flutter web builds, and forced JSON dispatch around APIs that are naturally
typed in Dart.

Keep these boundaries:

1. Use Flame `World`, `Component`, `CameraComponent`, effects, collision,
   particles, input events, `RouterComponent`, sprites, sprite sheets, text,
   post-processing, and timers directly.
2. Add Giant Toad types where pixel scaling, Map Magnet compatibility,
   deterministic behavior, project conventions, or cross-feature integration
   provides real value.
3. Prefer adapters and configured components over parallel entity, scene,
   animation, or rendering frameworks.
4. Flutter widgets are the standard overlay/menu/accessibility layer. Flame
   components remain the world-space UI option.
5. Every visual default uses nearest-neighbor filtering, integer placement where
   appropriate, and deterministic logical coordinates.

## Current foundation

The package now has about 4,300 lines of production Dart after removing the
script runtime and implementing the first complete typed-engine pass. Its
strongest areas are:

- integer pixel viewport metrics and coordinate conversion;
- sparse Map Magnet map/area/edit documents;
- semantic action data models;
- deterministic grid pathfinding and steering;
- Flutter pixel panels, buttons, menus, HUD widgets, focus, and overlays;
- cross-platform persistence, deterministic RNG/dialogue, diagnostics, audio,
  scene resource ownership, and isolate workers;
- typed Minimal and Top-down games, Flutter build exports, goldens, CI, and
  project initialization.

`flutter analyze`, package tests, and example widget tests pass. The custom
viewport no longer reaches into Flame's package-internal `Viewport.transform`.

## Nim-domain comparison and Flame overlap

The table records the baseline observed at the start of the audit; the completed
foundation pass below describes the resulting implementation.

| Domain | Baseline Dart state | Flame/Flutter standard | Giant Toad work still justified |
|---|---|---|---|
| Actions/input | Serializable action map and held-state set | Flame keyboard, pointer, drag, tap, joystick and event dispatch | Connect action state to Flame handlers; pressed/released edges, chords, deadzones, rebinding, focus suppression and gamepad adapter |
| Animation | No Giant Toad runtime | `SpriteAnimation`, animation group components, tickers | Do not duplicate; add pixel asset conventions, named-state helper only if examples prove friction |
| Areas/triggers | Map Magnet area document and cell containment | Flame collision hitboxes/callbacks | Runtime area component, typed enter/exit events, object properties and map-layer integration |
| Atlas/sprite sheets | Missing | Flame `SpriteSheet`, `SpriteBatch`, `SpriteAnimationData` | Asset metadata loader, nearest-neighbor paint defaults, Map Magnet atlas conversion; no parallel atlas renderer |
| Autotiles | Cardinal/blob masks implemented | No complete Flame autotile workflow | Ruleset mapping, neighbor updates, chunk invalidation, rendering integration and editor-compatible metadata |
| Camera | Pixel viewport, editor pan/zoom, standalone shake math | Flame camera follow, bounds, viewfinder, behaviors and effects | Pixel-rounded follow, deadzone/look-ahead presets, trauma shake component, bounds integration and resize tests |
| Collision | Missing at engine level | Flame collision detection, hitboxes and broadphase | Use Flame callbacks; add tile-grid collision queries, kinematic move-and-slide and pixel character controller |
| Color/blending | Uses Flutter `Color`/`Paint` | Flutter canvas and Flame paint APIs | No duplicate color API; document nearest-neighbor, anti-alias and blend defaults |
| Controller/gamepad | Action data only | Flame joystick; Flutter keyboard/pointer | Gamepad package adapter, axes/deadzones, device switching and action prompts |
| Defaults/bootstrap | `GiantToadGame`, resolution and viewport | `FlameGame`, `GameWidget` | Typed project metadata, pixel image cache, standard overlays, pause/focus lifecycle and app template |
| Debug | Minimal elapsed-time profiler | Flame debug mode, FPS component and devtools | Pixel debug overlay for camera/tile/collision/action state, structured counters and capture hooks |
| Entities | Wren entity registry removed | Flame component tree and `World` | No replacement ECS; document component patterns and add only domain components |
| Focus/UI input | Flutter focus scope/actions and logical overlay mapping | Flutter focus, shortcuts, actions, semantics | Integrate game action map, modal focus ownership, pointer/gamepad parity and restoration |
| Events/channels | Typed synchronous broadcast stream | Flame component events plus Dart streams | Define lifecycle/ownership; consider removing wrapper where direct streams suffice |
| Grid | World/cell conversion and autotile masks | Vector math | Add rectangular queries, chunk helpers and shared negative-coordinate fixtures |
| Lighting | Missing | Flame post-process/render texture support, no full pixel-light system | Low-resolution light mask, ambient/light components, blend policy and web/mobile parity |
| Particles | Missing wrapper | Flame particle system is comprehensive | Do not duplicate; provide pixel particle recipes and deterministic seeded examples |
| Pathfinding | Deterministic A* grid implementation | No general Flame pathfinder | Retain; add weighted costs, diagonal policy, reusable scratch storage and chunk/map adapters |
| Pool | Small generic pool | Flame `ComponentPool` for components | Prefer Flame pool for components; retain generic pool only for non-components and document distinction |
| Profiler | Synchronous stopwatch only | Flame devtools/FPS and Dart timeline | Timeline events, frame counters and scoped async measurement; integrate debug overlay |
| Random | Missing deterministic engine RNG | `dart:math.Random` is not state-serializable | Seeded deterministic RNG with snapshot/restore and independent streams |
| Rich Map Magnet maps | Sparse chunks, layers, areas, edits and codecs | `flame_tiled` serves Tiled, not Map Magnet | Complete tilesets, objects, custom properties, render order, culling, runtime edits, collision and asset validation |
| Scenes/routing | Missing | Flame `RouterComponent`, routes and worlds | Standard route/lifecycle conventions, transition overlays and resource ownership; do not build another scene graph |
| Serialization | JSON codecs for map/action documents | `dart:convert` | Versioned project/save schemas, migrations and stable diagnostics; no generic custom serializer |
| Settings/saves | Async store interface and memory store | Flutter has platform storage plugins, Flame has no save policy | File/shared-preferences/web adapter, save slots, atomic writes, migrations, autosave lifecycle and typed values |
| Steering | Seek/flee/arrive math | No broad built-in steering suite | Retain and add pursuit/evade/wander/separation only when examples need them |
| Tilemap | Sparse document and callback renderer | Flame components and optional `flame_tiled` | Real tileset renderer, sprite batching, chunk cache/invalidation, layers, objects, areas, collision and map hot reload |
| Timers | Missing wrapper | Flame `Timer`, `TimerComponent` | Use Flame directly; add no timer facade unless deterministic scheduling across pause is demonstrably needed |
| Tweens/game feel | Camera shake math only | Flame effects/controllers/sequences | Use Flame effects; provide composed pixel-game recipes, hit-stop and trauma helpers |
| Utilities | A few coordinate helpers | Dart/Flame extensions | Keep narrow; avoid a miscellaneous compatibility facade |
| Text/wrapping | Flutter text in overlays | Flame text renderers and Flutter text layout | Pixel-font registration, integer baselines, bitmap-font option and deterministic wrapping fixtures |

## Completed foundation pass

Tasks 319–334 closed the original P0 gaps: action devices feed semantic held and
edge state; Map Magnet has typed tilesets, objects, areas, rendering, autotiles,
and tile collision; shared preferences back versioned save slots and settings;
the CLI generates complete Flutter projects and invokes standard target builds;
and typed Minimal and Top-down games exercise the integrated runtime.

The package also has audio buses, Flame route lifecycle helpers, deterministic
RNG/dialogue, diagnostics, pixel sprite conventions, post-processing, complete
baseline overlay controls, a golden fixture, API docs, and desktop/mobile/web CI.

### Further engine-quality work driven by real games

- nearest-neighbor asset loading and paint conventions;
- pixel-rounded camera follow, bounds, deadzone, shake and resize behavior;
- tile collision and character movement;
- complete pixel UI controls and game-action focus integration;
- deterministic RNG, saveable state, dialogue state and debug overlay;
- audio buses and music transitions through `flame_audio`;
- scene routing/resource lifecycle conventions through Flame routing;
- golden screenshots at multiple aspect ratios and web render checks.

### P2 — advanced production features

- low-resolution lighting and post-processing;
- chunk streaming and large-map benchmarks;
- richer steering and crowd helpers;
- editor/runtime hot asset refresh;
- mobile gamepad and haptics adapters;
- documentation site and release automation.

## Existing design issues to address

- The package currently targets a beta Dart SDK exactly matching the local
  Flutter beta. Before release, choose and test a stable minimum SDK.
- Redundant event-bus and profiler wrappers were removed. `GiantToadObjectPool`
  remains explicitly limited to non-Component values; Flame `ComponentPool` is
  the standard for components.
- `GiantToadTilemapComponent` delegates every cell to a callback. This is a
  useful low-level seam, not yet a production renderer.
- UI is mostly Flutter overlay UI. World-space pixel UI and consistent action
  routing still need an explicit policy.
- Platform capabilities currently follow Flutter/plugin support. Add an explicit
  capability contract only when a real platform-specific feature needs one.
- CI and a deterministic UI golden are present; coverage thresholds and package
  publishing/signing remain release-process follow-ups.

## Recommended implementation order

1. Keep analysis and tests green after the Wren removal.
2. Finish project metadata and CI so every later feature has repeatable gates.
3. Integrate actions with Flame input.
4. Complete one vertical slice: map render → collision → player controller →
   camera → UI → save → audio.
5. Port Minimal and Top-down Starter as typed Dart games and establish goldens.
6. Add remaining UI, debug, dialogue, scene, lighting, and advanced map systems
   from concrete example requirements.
7. Re-audit every public Giant Toad type against Flame before stabilizing 1.0.

Taskbook Tasks 318–334 completed this foundation plan. Future tasks should still
cite the Flame API they use or explain why a Giant Toad-specific abstraction is
necessary.
