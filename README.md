<p align="center">
  <img src="assets/branding/giant-toad.png" width="384" height="384" alt="Giant Toad logo">
</p>

<h1 align="center">Giant Toad</h1>

> [!WARNING]
> Giant Toad is under active development. Until version 1.0.0, APIs, project
> formats, and behavior may change between releases. Pin your dependency version
> and review the changelog before upgrading.

Giant Toad is an opinionated, typed **pixel-art game engine layer for Flutter
and Flame**.

Games are written in Dart. Flame remains the component, world, camera, input,
effect, collision, particle, and rendering foundation. Giant Toad adds only the
pixel-game policies and reusable systems that Flame intentionally leaves to a
game or higher-level engine.

## Direction

```text
Dart game code → Giant Toad pixel-art conventions → Flame → Flutter
```

Giant Toad does not wrap Flame merely to rename its APIs. Projects can use Flame
components directly. Engine APIs focus on:

- 800×600 authored resolution, expanding viewport, and fixed 2× pixel scale
  (1600×900 displays 800×450 logically);
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
- Flutter pixel UI theme, focus, overlays, menus, dialogue, HUD widgets, and
  nine-slice presentation;
- pathfinding, steering, deterministic RNG, dialogue, non-component pooling,
  trauma camera shake, diagnostics, persistent saves/settings, and isolate workers;
- tilesets, typed objects/areas, autotiles, sparse rendering, tile
  collision, and a kinematic pixel body;
- Flame sprite/animation conventions, post-process pixelation and lighting;
- semantic keyboard, pointer, joystick, and gamepad action adapters;
- audio buses, browser activation queues, and music crossfades through
  `flame_audio`;
- Flame `RouterComponent` scene lifecycle and owned-resource cleanup;
- reusable engine systems exercised by the separate example gallery;
- `gt init`, `gt validate`, `gt run`, and standard Flutter target exports.

Guides, engineering notes, and the generated Markdown API reference live in
[`docs/`](docs/README.md).

## Package usage

```dart
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  runApp(GameWidget(game: GiantToadGame(world: World())));
}
```

## CLI

```sh
dart run bin/giant_toad.dart init my_game
dart run bin/giant_toad.dart validate my_game
dart run bin/giant_toad.dart run my_game
dart run bin/giant_toad.dart export --target web my_game
```

## Development

From the package root:

```sh
flutter pub get
flutter analyze
flutter test
./tool/generate_docs.sh
```
