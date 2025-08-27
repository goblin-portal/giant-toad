import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'giant_toad_pixel_viewport.dart';
import 'giant_toad_resolution.dart';

/// A Flame game using Giant Toad's default pixel-art resolution policy.
///
/// The default 800×600 authored resolution is presented in expanding mode at
/// 2× pixel scale. A 1600×900 window therefore exposes an 800×450 logical
/// viewport; resizing changes both visible logical dimensions.
class GiantToadGame<W extends World> extends FlameGame<W> {
  GiantToadGame({
    required W world,
    GiantToadResolution? resolution,
    this.viewportMode = GiantToadViewportMode.expand,
    this.pixelScale = 2,
  }) : assert(pixelScale > 0),
       resolution = resolution ?? defaultResolution,
       super(
         world: world,
         camera: CameraComponent(
           viewport: GiantToadPixelViewport(
             resolution: resolution ?? defaultResolution,
             mode: viewportMode,
             pixelScale: pixelScale,
           ),
         ),
       ) {
    camera.viewfinder.position = Vector2(
      this.resolution.width / 2,
      this.resolution.height / 2,
    );
  }

  /// The default logical width and baseline height for new games.
  static final defaultResolution = GiantToadResolution(width: 800, height: 600);

  /// Selects the logical viewport policy.
  final GiantToadViewportMode viewportMode;

  /// Integer presentation scale used by expanding mode.
  final int pixelScale;

  var _initialCameraFramed = false;

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    if (_initialCameraFramed) return;
    final visibleSize = camera.viewport.virtualSize;
    camera.viewfinder.position = Vector2(visibleSize.x / 2, visibleSize.y / 2);
    _initialCameraFramed = true;
  }

  /// The fixed logical canvas used by this game.
  final GiantToadResolution resolution;
}
