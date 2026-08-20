# Direct example source audit

This audit compares each Dart example directly with
`../giant-toad-nim/examples/<name>/game.nim`. Matching pixels is not required;
matching controls, state transitions, gameplay rules, lifecycle, persistence,
audio, and failure behavior is required.

The earlier gallery-only conversions were insufficient. A button that changes a
label does not count as conversion of a complete game loop.

| Example | Direct Nim behavior evidence in Dart |
|---|---|
| minimal | Complete typed pass: title/game/pause, fade, movement bounds, camera, animation, six coins, particles, audio, dialogue, persistent journal, HUD tween and controls |
| adventure | **Complete:** bounded top-down world, three coins, shrine completion, keeper/journal dialogue, persistent coins/keeper/goal state, animated player, particles/audio, 200 ms title transition, pause overlay and fixed bounded camera |
| animation-state | **Complete:** idle/walk/one-shot attack state machine, facing, variable frames, named hit event, hit flash and completion transition, implemented over Flame animation groups |
| benchmark | **Complete:** 10,000 default animated toads, million cap, deterministic reset, falling/bouncing physics, adaptive growth from smoothed FPS, pause/add/max keyboard and UI controls, and live metrics |
| collision-benchmark | **Complete:** generated 80×28 map, naive bodies versus deterministic merged rectangles, 1,000 live timed queries, WASD camera, Space mode toggle, debug bodies and zero-mismatch occupancy report |
| dialogue-choice | **Complete:** title/talk/result routes, progressive typewriter lines, Up/Down keyboard selection, selected value, 350/250 ms fades and R restart |
| fishing-hook | **Complete:** normalized player movement, smoothed mouse rod aim, 12-point Verlet rope, ten-pass constraints, tangent pull impulse, hook wall bounce, 14-particle edge bursts, pause/debug/reset/rope controls, four tuning sliders and explicit browser shader fallback |
| game-feel | **Complete:** platform movement, gravity, buffered/coyote jump, collision, attack overlap, hit pause, flash, camera trauma and world-space floating text |
| gameplay | **Complete:** editable 20×12 maze, click pathfinding, obstacle invalidation, path steering, deterministic trail/click particles, ease-out pulse, repeating 3-second tick and pixel-snapped camera follow |
| gameplay-systems | **Complete:** exact 12×8 route and blocked cells, path following, 16-value spark pool lifecycle, 4×4 autotile fixture, initial camera shake and composed-system label |
| import-rotation | **Complete:** separate typed player/scene/sword modules, normalized WASD movement and bounds, parent-position synchronization, original 11-frame sword asset and continuous 60°/s crisp rotation |
| platformer | **Complete:** matching 40×12 tile layout, movement, gravity, buffered/coyote jump, tile collision, 2× smooth camera follow and runtime diagnostics |
| rendering-lab | **Complete:** offscreen picture lifecycle and fallback, additive/subtractive composition, hard clipping, translated 20° transform, colored indexed mesh, radial light, pixel shadow and mutable 8×8 image-data sample |
| responsive-viewport | **Complete:** 3× expanding viewport, resize history, landscape/portrait layouts, authored/display sizing, infinite checkerboard, normalized movement and pixel-snapped smooth camera framing |
| scenes | **Complete:** real Flame `RouterComponent` menu/game routes, 200 ms fade, activation lifecycle, audio cue, terrain, gravity, movement, camera follow and Escape return |
| system-apis | **Complete:** JSON decode, event subscribe/off behavior, nested storage write/copy/move/list, channel queues, isolate worker with web fallback reason, profiler timing, settings, delayed/repeating timers, pointer hover and pixel rendering |
| top-down-starter | **Complete:** 320×180 title/world flow with 200 ms transition, 640×180 terrain, four-frame atlas hero, normalized WASD/arrows, 84 px/s swept collision, bounded smoothing camera/deadzone diagnostics, three coins with particles/audio/persistent journal, two-page introduction, interactive sign, portal reset, player light and F2/F3 overlays |
| ui-focus | **Complete:** tabs, dropdown, selectable list, text change/submission, animated progress, Flutter directional traversal and displayed focus state |
| ui-modular | **Complete:** independently composed moving game state and UI layer, HUD actions, reset/coin actions, tabs, options, text submission, checkbox and volume |
| ui-showcase | **Complete:** normal/selected/disabled buttons, enabled/disabled checkboxes and sliders, focus traversal, pixel font, nine-slice skin and feedback states |
| web-audio | **Complete:** cached original beep, browser activation gate, pointer/Space gesture unlock, 0.65-volume playback, play counter, pulse visualization and explicit failure state |
| web-portable | **Complete:** browser-safe typed game, A/D movement, gravity, floor/block collision, goal trigger, bounded presentation and explicit filesystem/isolate capability reasons |
| world-collision | **Complete:** authored bodies/solids/triggers/tags, swept move-and-slide hits with collider ids/normals, filtered queries, nearest raycast and deadzone/look-ahead/trauma camera |

## Engine gaps resolved by the audit

The audit drove the shared animation-state controller, jump assistance, hit
pause/flash/floating-text recipes, merged collision rectangles, runtime map
revision invalidation, deterministic particles, capability reporting, Flame
route transitions, typewriter dialogue choices, render-target/post-process
recipes, named collision worlds and raw-atlas benchmark batching. Each API is
used by its originating example; narrowly authored behavior remains local to an
example rather than expanding the engine surface speculatively.
