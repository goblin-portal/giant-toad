# Pixel-art production workflow

## Sampling and readable text

Choose sampling per component instead of forcing every transform through the
same policy:

```dart
GiantToadPixelSpriteComponent(
  sampling: GiantToadSampling.pixelPerfect,
);

GiantToadPixelSpriteComponent(
  angle: 0.35,
  sampling: GiantToadSampling.crispTransform,
);
```

`pixelPerfect` snaps placement and uses nearest-neighbor filtering.
`crispTransform` permits fractional positions and arbitrary rotation while
retaining nearest-neighbor, non-antialiased edges. `smooth` opts into
interpolated filtering.

Use `GiantToadPixelOverlay` for UI artwork that should be enlarged with the
logical canvas. Use `GiantToadNativeTextOverlay` for readable scalable text: its
positions remain authored in game coordinates, but Flutter lays glyphs out at
the final display font size rather than enlarging a low-resolution text image.

## Resolution and viewport

`GiantToadGame` defaults to the project policy: an authored 800×600
baseline, expanding viewport, and 2× pixel scale. Expansion divides both current
window dimensions by two, so the standard 1600×900 window exposes an 800×450
logical viewport. Resizing reveals more or less space on both axes.

Fixed mode keeps both authored dimensions and letterboxes. `expandWidth` remains
available for games that intentionally anchor logical width and derive height.

Use `GiantToadPixelCoordinates` for overlay/canvas conversion and
`GiantToadPixelViewport.globalToLocal` for Flame viewport conversion. Never
reimplement CSS or device-pixel coordinate transforms in game code.

## Images and animation

Load images through Flame, then use `GiantToadPixelAtlas` only for regular
integer sprite sheets. It returns Flame `Sprite` and `SpriteAnimation` objects.
Use `GiantToadPixelSpriteComponent` and `GiantToadPixelAnimationComponent` for
nearest-neighbor paint defaults. Irregular atlases should use Flame sprites with
a project metadata loader rather than a second animation runtime.

## Components

Game entities are normal Flame components in a `World`. Use Flame effects,
particles, timers, collision callbacks, and `RouterComponent` directly.
`GiantToadPixelBody` is appropriate only for kinematic collision against a
solid tile layer.

## UI

World rendering belongs to Flame. Menus, HUD, dialogue, text editing,
accessibility, and platform focus belong to Flutter overlays using
`giant_toad_ui.dart`. Wrap overlays in `GiantToadUiThemeScope` and
`GiantToadFocusScope`.

## Rendering checks

Keep positions and authored dimensions integral. Disable anti-aliasing and use
`FilterQuality.none` for pixel assets. Use `GiantToadPixelatePostProcess` only
when a subtree intentionally renders at a lower effective resolution; it is not
a substitute for correct asset filtering.
