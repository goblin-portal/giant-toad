<div>

<div>

<img src="../../assets/branding/giant-toad.png" width="384" height="384" alt="Giant Toad logo" />

# Giant Toad

<div>

Warning

Giant Toad is under active development. Until version 1.0.0, APIs, project formats, and behavior may change between releases. Pin your dependency version and review the changelog before upgrading.

</div>

Giant Toad is an opinionated, typed **pixel-art game engine layer for Flutter and Flame**.

Games are written in Dart. Flame remains the component, world, camera, input, effect, collision, particle, and rendering foundation. Giant Toad adds only the pixel-game policies and reusable systems that Flame intentionally leaves to a game or higher-level engine.

## Direction

``` text
Dart game code → Giant Toad pixel-art conventions → Flame → Flutter
```

Giant Toad does not wrap Flame merely to rename its APIs. Projects can use Flame components directly. Engine APIs focus on:

- 800×600 authored resolution, expanding viewport, and fixed 2× pixel scale (1600×900 displays 800×450 logically);
- fixed, two-axis expanding, or width-expanding viewport policies;
- canvas/logical/world coordinate conversion;
- sparse JSON map documents and reversible editing contracts;
- semantic actions and gamepad/keyboard rebinding;
- pixel-oriented Flutter overlays, focus, menus, HUD, and nine-slice styling;
- reusable gameplay algorithms not already supplied by Flame;
- project validation, packaging conventions, and deterministic tests.

## Current foundation

Implemented today:

- `GiantToadGame` and configurable logical pixel viewport;
- pixel coordinate helpers and editor camera math;
- sparse map, area, chunk, grid, edit, and tile-rendering models;
- semantic action maps;
- Flutter pixel UI theme, focus, overlays, menus, dialogue, HUD widgets, and nine-slice presentation;
- pathfinding, steering, deterministic RNG, dialogue, non-component pooling, trauma camera shake, diagnostics, persistent saves/settings, and isolate workers;
- tilesets, typed objects/areas, autotiles, sparse rendering, tile collision, and a kinematic pixel body;
- Flame sprite/animation conventions, post-process pixelation and lighting;
- semantic keyboard, pointer, joystick, and gamepad action adapters;
- audio buses, browser activation queues, and music crossfades through `flame_audio`;
- Flame `RouterComponent` scene lifecycle and owned-resource cleanup;
- reusable engine systems exercised by the separate example gallery;
- `gt init`, `gt validate`, `gt run`, and standard Flutter target exports.

Guides, engineering notes, and the generated Markdown API reference live in [`docs/`](../README.md).

## Package usage

``` dart
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  runApp(GameWidget(game: GiantToadGame(world: World())));
}
```

## CLI

``` sh
dart run bin/giant_toad.dart init my_game
dart run bin/giant_toad.dart validate my_game
dart run bin/giant_toad.dart run my_game
dart run bin/giant_toad.dart export --target web my_game
```

## Development

From the package root:

``` sh
flutter pub get
flutter analyze
flutter test
./tool/generate_docs.sh
```

</div>

<div>

## Libraries

<span class="name">[giant_toad](giant_toad/index.md)</span>  

<span class="name">[giant_toad_gameplay](giant_toad_gameplay/index.md)</span>  
Deterministic gameplay algorithms and reusable game-feel systems.

<span class="name">[giant_toad_render](giant_toad_render/index.md)</span>  
Pixel-oriented sprite, animation, lighting, and shader APIs.

<span class="name">[giant_toad_runtime](giant_toad_runtime/index.md)</span>  
Input, audio, persistence, scene, project, and runtime service APIs.

<span class="name">[giant_toad_tilemap](giant_toad_tilemap/index.md)</span>  
Sparse tilemap document, editing, rendering, area, and collision APIs.

<span class="name">[giant_toad_ui](giant_toad_ui/index.md)</span>  
Pixel-art game overlay widgets, theme primitives, and input integration.

<span class="name">[src/audio/giant_toad_audio](src_audio_giant_toad_audio/index.md)</span>  

<span class="name">[src/debug/giant_toad_behavior_fixture](src_debug_giant_toad_behavior_fixture/index.md)</span>  

<span class="name">[src/debug/giant_toad_debug_overlay](src_debug_giant_toad_debug_overlay/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_dialogue](src_gameplay_giant_toad_dialogue/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_game_feel](src_gameplay_giant_toad_game_feel/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_grid_step](src_gameplay_giant_toad_grid_step/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_object_pool](src_gameplay_giant_toad_object_pool/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_path_following](src_gameplay_giant_toad_path_following/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_pathfinding](src_gameplay_giant_toad_pathfinding/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_perception](src_gameplay_giant_toad_perception/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_pixel_camera](src_gameplay_giant_toad_pixel_camera/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_random](src_gameplay_giant_toad_random/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_steering](src_gameplay_giant_toad_steering/index.md)</span>  

<span class="name">[src/gameplay/giant_toad_tasks](src_gameplay_giant_toad_tasks/index.md)</span>  

<span class="name">[src/giant_toad_editor_camera](src_giant_toad_editor_camera/index.md)</span>  

<span class="name">[src/giant_toad_game](src_giant_toad_game/index.md)</span>  

<span class="name">[src/giant_toad_pixel_coordinates](src_giant_toad_pixel_coordinates/index.md)</span>  

<span class="name">[src/giant_toad_pixel_viewport](src_giant_toad_pixel_viewport/index.md)</span>  

<span class="name">[src/giant_toad_resolution](src_giant_toad_resolution/index.md)</span>  

<span class="name">[src/input/giant_toad_action_input](src_input_giant_toad_action_input/index.md)</span>  

<span class="name">[src/input/giant_toad_actions](src_input_giant_toad_actions/index.md)</span>  

<span class="name">[src/project/giant_toad_project](src_project_giant_toad_project/index.md)</span>  

<span class="name">[src/render/giant_toad_ambient_lighting](src_render_giant_toad_ambient_lighting/index.md)</span>  

<span class="name">[src/render/giant_toad_animation_states](src_render_giant_toad_animation_states/index.md)</span>  

<span class="name">[src/render/giant_toad_directional_animation](src_render_giant_toad_directional_animation/index.md)</span>  

<span class="name">[src/render/giant_toad_lighting](src_render_giant_toad_lighting/index.md)</span>  

<span class="name">[src/render/giant_toad_pixel_post_process](src_render_giant_toad_pixel_post_process/index.md)</span>  

<span class="name">[src/render/giant_toad_pixel_sprites](src_render_giant_toad_pixel_sprites/index.md)</span>  

<span class="name">[src/render/giant_toad_surface_shaders](src_render_giant_toad_surface_shaders/index.md)</span>  

<span class="name">[src/runtime/giant_toad_capabilities](src_runtime_giant_toad_capabilities/index.md)</span>  

<span class="name">[src/runtime/giant_toad_persistence](src_runtime_giant_toad_persistence/index.md)</span>  

<span class="name">[src/runtime/giant_toad_systems](src_runtime_giant_toad_systems/index.md)</span>  

<span class="name">[src/scenes/giant_toad_scenes](src_scenes_giant_toad_scenes/index.md)</span>  

<span class="name">[src/tilemap/giant_toad_area_document](src_tilemap_giant_toad_area_document/index.md)</span>  

<span class="name">[src/tilemap/giant_toad_area_tracker](src_tilemap_giant_toad_area_tracker/index.md)</span>  

<span class="name">[src/tilemap/giant_toad_grid](src_tilemap_giant_toad_grid/index.md)</span>  

<span class="name">[src/tilemap/giant_toad_json](src_tilemap_giant_toad_json/index.md)</span>  

<span class="name">[src/tilemap/giant_toad_map_document](src_tilemap_giant_toad_map_document/index.md)</span>  

<span class="name">[src/tilemap/giant_toad_map_edit](src_tilemap_giant_toad_map_edit/index.md)</span>  

<span class="name">[src/tilemap/giant_toad_map_runtime](src_tilemap_giant_toad_map_runtime/index.md)</span>  

<span class="name">[src/tilemap/giant_toad_tilemap_component](src_tilemap_giant_toad_tilemap_component/index.md)</span>  

<span class="name">[src/ui/giant_toad_controls](src_ui_giant_toad_controls/index.md)</span>  

<span class="name">[src/ui/giant_toad_editor_controls](src_ui_giant_toad_editor_controls/index.md)</span>  

<span class="name">[src/ui/giant_toad_focus](src_ui_giant_toad_focus/index.md)</span>  

<span class="name">[src/ui/giant_toad_game_widgets](src_ui_giant_toad_game_widgets/index.md)</span>  

<span class="name">[src/ui/giant_toad_icon](src_ui_giant_toad_icon/index.md)</span>  

<span class="name">[src/ui/giant_toad_menu](src_ui_giant_toad_menu/index.md)</span>  

<span class="name">[src/ui/giant_toad_nine_slice](src_ui_giant_toad_nine_slice/index.md)</span>  

<span class="name">[src/ui/giant_toad_overlay](src_ui_giant_toad_overlay/index.md)</span>  

<span class="name">[src/ui/giant_toad_pixel_button](src_ui_giant_toad_pixel_button/index.md)</span>  

<span class="name">[src/ui/giant_toad_ui_feedback](src_ui_giant_toad_ui_feedback/index.md)</span>  

<span class="name">[src/ui/giant_toad_ui_theme](src_ui_giant_toad_ui_theme/index.md)</span>  

<span class="name">[src/world/giant_toad_collision_world](src_world_giant_toad_collision_world/index.md)</span>  

<span class="name">[src/world/giant_toad_tile_collision](src_world_giant_toad_tile_collision/index.md)</span>  

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad package](https://github.com/goblin-loot/giant-toad)

##### <span class="package-name">giant_toad</span> <span class="package-kind">package</span>

1.  Libraries
2.  [giant_toad](giant_toad/index.md)
3.  [giant_toad_gameplay](giant_toad_gameplay/index.md)
4.  [giant_toad_render](giant_toad_render/index.md)
5.  [giant_toad_runtime](giant_toad_runtime/index.md)
6.  [giant_toad_tilemap](giant_toad_tilemap/index.md)
7.  [giant_toad_ui](giant_toad_ui/index.md)
8.  [src/audio/giant_toad_audio](src_audio_giant_toad_audio/index.md)
9.  [src/debug/giant_toad_behavior_fixture](src_debug_giant_toad_behavior_fixture/index.md)
10. [src/debug/giant_toad_debug_overlay](src_debug_giant_toad_debug_overlay/index.md)
11. [src/gameplay/giant_toad_dialogue](src_gameplay_giant_toad_dialogue/index.md)
12. [src/gameplay/giant_toad_game_feel](src_gameplay_giant_toad_game_feel/index.md)
13. [src/gameplay/giant_toad_grid_step](src_gameplay_giant_toad_grid_step/index.md)
14. [src/gameplay/giant_toad_object_pool](src_gameplay_giant_toad_object_pool/index.md)
15. [src/gameplay/giant_toad_path_following](src_gameplay_giant_toad_path_following/index.md)
16. [src/gameplay/giant_toad_pathfinding](src_gameplay_giant_toad_pathfinding/index.md)
17. [src/gameplay/giant_toad_perception](src_gameplay_giant_toad_perception/index.md)
18. [src/gameplay/giant_toad_pixel_camera](src_gameplay_giant_toad_pixel_camera/index.md)
19. [src/gameplay/giant_toad_random](src_gameplay_giant_toad_random/index.md)
20. [src/gameplay/giant_toad_steering](src_gameplay_giant_toad_steering/index.md)
21. [src/gameplay/giant_toad_tasks](src_gameplay_giant_toad_tasks/index.md)
22. [src/giant_toad_editor_camera](src_giant_toad_editor_camera/index.md)
23. [src/giant_toad_game](src_giant_toad_game/index.md)
24. [src/giant_toad_pixel_coordinates](src_giant_toad_pixel_coordinates/index.md)
25. [src/giant_toad_pixel_viewport](src_giant_toad_pixel_viewport/index.md)
26. [src/giant_toad_resolution](src_giant_toad_resolution/index.md)
27. [src/input/giant_toad_action_input](src_input_giant_toad_action_input/index.md)
28. [src/input/giant_toad_actions](src_input_giant_toad_actions/index.md)
29. [src/project/giant_toad_project](src_project_giant_toad_project/index.md)
30. [src/render/giant_toad_ambient_lighting](src_render_giant_toad_ambient_lighting/index.md)
31. [src/render/giant_toad_animation_states](src_render_giant_toad_animation_states/index.md)
32. [src/render/giant_toad_directional_animation](src_render_giant_toad_directional_animation/index.md)
33. [src/render/giant_toad_lighting](src_render_giant_toad_lighting/index.md)
34. [src/render/giant_toad_pixel_post_process](src_render_giant_toad_pixel_post_process/index.md)
35. [src/render/giant_toad_pixel_sprites](src_render_giant_toad_pixel_sprites/index.md)
36. [src/render/giant_toad_surface_shaders](src_render_giant_toad_surface_shaders/index.md)
37. [src/runtime/giant_toad_capabilities](src_runtime_giant_toad_capabilities/index.md)
38. [src/runtime/giant_toad_persistence](src_runtime_giant_toad_persistence/index.md)
39. [src/runtime/giant_toad_systems](src_runtime_giant_toad_systems/index.md)
40. [src/scenes/giant_toad_scenes](src_scenes_giant_toad_scenes/index.md)
41. [src/tilemap/giant_toad_area_document](src_tilemap_giant_toad_area_document/index.md)
42. [src/tilemap/giant_toad_area_tracker](src_tilemap_giant_toad_area_tracker/index.md)
43. [src/tilemap/giant_toad_grid](src_tilemap_giant_toad_grid/index.md)
44. [src/tilemap/giant_toad_json](src_tilemap_giant_toad_json/index.md)
45. [src/tilemap/giant_toad_map_document](src_tilemap_giant_toad_map_document/index.md)
46. [src/tilemap/giant_toad_map_edit](src_tilemap_giant_toad_map_edit/index.md)
47. [src/tilemap/giant_toad_map_runtime](src_tilemap_giant_toad_map_runtime/index.md)
48. [src/tilemap/giant_toad_tilemap_component](src_tilemap_giant_toad_tilemap_component/index.md)
49. [src/ui/giant_toad_controls](src_ui_giant_toad_controls/index.md)
50. [src/ui/giant_toad_editor_controls](src_ui_giant_toad_editor_controls/index.md)
51. [src/ui/giant_toad_focus](src_ui_giant_toad_focus/index.md)
52. [src/ui/giant_toad_game_widgets](src_ui_giant_toad_game_widgets/index.md)
53. [src/ui/giant_toad_icon](src_ui_giant_toad_icon/index.md)
54. [src/ui/giant_toad_menu](src_ui_giant_toad_menu/index.md)
55. [src/ui/giant_toad_nine_slice](src_ui_giant_toad_nine_slice/index.md)
56. [src/ui/giant_toad_overlay](src_ui_giant_toad_overlay/index.md)
57. [src/ui/giant_toad_pixel_button](src_ui_giant_toad_pixel_button/index.md)
58. [src/ui/giant_toad_ui_feedback](src_ui_giant_toad_ui_feedback/index.md)
59. [src/ui/giant_toad_ui_theme](src_ui_giant_toad_ui_theme/index.md)
60. [src/world/giant_toad_collision_world](src_world_giant_toad_collision_world/index.md)
61. [src/world/giant_toad_tile_collision](src_world_giant_toad_tile_collision/index.md)

</div>

<div>

</div>
