<div>

<div>

# <span class="kind-library">giant_toad_gameplay</span> library

</div>

<div>

Deterministic gameplay algorithms and reusable game-feel systems.

</div>

<div>

## Classes

<span class="name">[GiantToadActionTask](../src_gameplay_giant_toad_tasks/GiantToadActionTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadCell](../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span>  
An immutable integer cell coordinate.

<span class="name">[GiantToadConditionTask](../src_gameplay_giant_toad_tasks/GiantToadConditionTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadDialogue](../src_gameplay_giant_toad_dialogue/GiantToadDialogue-class.md)</span>  
Deterministic dialogue graph state independent of its Flutter presentation.

<span class="name">[GiantToadDialogueChoice](../src_gameplay_giant_toad_dialogue/GiantToadDialogueChoice-class.md)</span>  

<span class="name">[GiantToadDialogueNode](../src_gameplay_giant_toad_dialogue/GiantToadDialogueNode-class.md)</span>  

<span class="name">[GiantToadFloatingText](../src_gameplay_giant_toad_game_feel/GiantToadFloatingText-class.md)</span>  
World-space floating label with deterministic velocity and lifetime.

<span class="name">[GiantToadGridBounds](../src_gameplay_giant_toad_pathfinding/GiantToadGridBounds-class.md)</span>  
Inclusive limits for a finite grid search.

<span class="name">[GiantToadGridStepper](../src_gameplay_giant_toad_grid_step/GiantToadGridStepper-class.md)</span>  

<span class="name">[GiantToadHitPause](../src_gameplay_giant_toad_game_feel/GiantToadHitPause-class.md)</span>  
Freezes simulation for a short hit-confirmation interval while allowing UI, flash, audio, and camera systems to keep receiving unscaled time.

<span class="name">[GiantToadJumpAssist](../src_gameplay_giant_toad_game_feel/GiantToadJumpAssist-class.md)</span>  
Buffered jump and coyote-time state for deterministic platform controllers.

<span class="name">[GiantToadObjectPool](../src_gameplay_giant_toad_object_pool/GiantToadObjectPool-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Explicit reusable-object pool for high-churn non-Component values.

<span class="name">[GiantToadPathAdapters](../src_gameplay_giant_toad_path_following/GiantToadPathAdapters-class.md)</span>  

<span class="name">[GiantToadPathfinding](../src_gameplay_giant_toad_pathfinding/GiantToadPathfinding-class.md)</span>  
Deterministic four-direction A\* over a bounded integer grid.

<span class="name">[GiantToadPathFollower](../src_gameplay_giant_toad_path_following/GiantToadPathFollower-class.md)</span>  

<span class="name">[GiantToadPerception](../src_gameplay_giant_toad_perception/GiantToadPerception-class.md)</span>  

<span class="name">[GiantToadPerceptionResult](../src_gameplay_giant_toad_perception/GiantToadPerceptionResult-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadPerceptionTarget](../src_gameplay_giant_toad_perception/GiantToadPerceptionTarget-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadPixelCameraController](../src_gameplay_giant_toad_pixel_camera/GiantToadPixelCameraController-class.md)</span>  
Pixel-oriented follow policy layered on Flame's CameraComponent/Viewfinder.

<span class="name">[GiantToadRandom](../src_gameplay_giant_toad_random/GiantToadRandom-class.md)</span>  
Deterministic, state-serializable 32-bit RNG with identical Dart VM and web behavior.

<span class="name">[GiantToadRepeatTask](../src_gameplay_giant_toad_tasks/GiantToadRepeatTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadScreenFlash](../src_gameplay_giant_toad_game_feel/GiantToadScreenFlash-class.md)</span>  
Time-based screen flash state suitable for a Flame overlay component.

<span class="name">[GiantToadSelectorTask](../src_gameplay_giant_toad_tasks/GiantToadSelectorTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadSequenceTask](../src_gameplay_giant_toad_tasks/GiantToadSequenceTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadSteering](../src_gameplay_giant_toad_steering/GiantToadSteering-class.md)</span>  
Allocation-conscious steering helpers for Flame position and velocity code.

<span class="name">[GiantToadTask](../src_gameplay_giant_toad_tasks/GiantToadTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadTaskComponent](../src_gameplay_giant_toad_tasks/GiantToadTaskComponent-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

<span class="name">[GiantToadTypewriterDialogue](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  
Deterministic typewriter/choice presentation state shared by keyboard, controller, pointer, and Flutter overlay renderers.

<span class="name">[GiantToadTypewriterLine](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterLine-class.md)</span>  

<span class="name">[GiantToadValueChoice](../src_gameplay_giant_toad_dialogue/GiantToadValueChoice-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>  

<span class="name">[GiantToadWaitTask](../src_gameplay_giant_toad_tasks/GiantToadWaitTask-class.md)<span class="signature">\<<span class="type-parameter">C</span>\></span></span>  

</div>

<div>

## Enums

<span class="name">[GiantToadGridDirection](../src_gameplay_giant_toad_grid_step/GiantToadGridDirection.md)</span>  

<span class="name">[GiantToadGridStepResult](../src_gameplay_giant_toad_grid_step/GiantToadGridStepResult.md)</span>  

<span class="name">[GiantToadPathCompletion](../src_gameplay_giant_toad_path_following/GiantToadPathCompletion.md)</span>  

<span class="name">[GiantToadTaskStatus](../src_gameplay_giant_toad_tasks/GiantToadTaskStatus.md)</span>  

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  giant_toad_gameplay.dart

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

##### giant_toad_gameplay library

</div>
