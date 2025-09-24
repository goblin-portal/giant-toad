import 'package:flame/extensions.dart';
import 'package:flutter/widgets.dart';

import '../giant_toad_pixel_viewport.dart';
import '../giant_toad_resolution.dart';

GiantToadViewportMetrics _overlayMetrics({
  required BoxConstraints constraints,
  required GiantToadResolution resolution,
  required GiantToadViewportMode mode,
  required int pixelScale,
}) {
  final canvasSize = Vector2(constraints.maxWidth, constraints.maxHeight);
  return switch (mode) {
    GiantToadViewportMode.fixed => GiantToadViewportMetrics.fit(
      resolution: resolution,
      canvasSize: canvasSize,
    ),
    GiantToadViewportMode.expand => GiantToadViewportMetrics.expand(
      canvasSize: canvasSize,
      pixelScale: pixelScale,
    ),
    GiantToadViewportMode.expandWidth => GiantToadViewportMetrics.expandWidth(
      resolution: resolution,
      canvasSize: canvasSize,
    ),
  };
}

/// Places a Flutter overlay in the same letterboxed physical rectangle as the
/// Giant Toad logical pixel canvas.
///
/// Use this as a direct child of a [Stack] above a `GameWidget`. Its child is
/// laid out in logical pixels, then scaled using the viewport's pixel scale.
class GiantToadPixelOverlay extends StatelessWidget {
  const GiantToadPixelOverlay({
    required this.resolution,
    required this.child,
    this.mode = GiantToadViewportMode.fixed,
    this.pixelScale = 2,
    super.key,
  });

  final GiantToadResolution resolution;
  final GiantToadViewportMode mode;
  final int pixelScale;
  final Widget child;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final metrics = _overlayMetrics(
        constraints: constraints,
        resolution: resolution,
        mode: mode,
        pixelScale: pixelScale,
      );
      final logicalWidth = metrics.size.x / metrics.scale;
      final logicalHeight = metrics.size.y / metrics.scale;
      return Stack(
        children: [
          Positioned(
            left: metrics.offset.x,
            top: metrics.offset.y,
            width: metrics.size.x,
            height: metrics.size.y,
            child: ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                child: Transform.scale(
                  alignment: Alignment.topLeft,
                  scale: metrics.scale,
                  filterQuality: FilterQuality.none,
                  child: SizedBox(
                    width: logicalWidth,
                    height: logicalHeight,
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}

typedef GiantToadDisplayUiBuilder =
    Widget Function(BuildContext context, double scale, Size logicalSize);

/// Lays out UI directly in the final display rectangle without a paint-time
/// transform. Use the supplied scale for dimensions, theme tokens and fonts.
class GiantToadDisplayUiOverlay extends StatelessWidget {
  const GiantToadDisplayUiOverlay({
    required this.resolution,
    required this.builder,
    this.mode = GiantToadViewportMode.fixed,
    this.pixelScale = 2,
    super.key,
  });

  final GiantToadResolution resolution;
  final GiantToadViewportMode mode;
  final int pixelScale;
  final GiantToadDisplayUiBuilder builder;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final metrics = _overlayMetrics(
        constraints: constraints,
        resolution: resolution,
        mode: mode,
        pixelScale: pixelScale,
      );
      return Stack(
        children: [
          Positioned(
            left: metrics.offset.x,
            top: metrics.offset.y,
            width: metrics.size.x,
            height: metrics.size.y,
            child: ClipRect(
              child: builder(
                context,
                metrics.scale,
                Size(
                  metrics.size.x / metrics.scale,
                  metrics.size.y / metrics.scale,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}

/// Text description in authored game coordinates.
class GiantToadNativeText {
  const GiantToadNativeText({
    required this.text,
    required this.x,
    required this.y,
    required this.fontSize,
    this.style,
  });

  final String text;
  final double x;
  final double y;
  final double fontSize;
  final TextStyle? style;
}

/// Positions text on the game grid but rasterizes glyphs at display resolution.
///
/// Unlike [GiantToadPixelOverlay], this does not transform a low-resolution
/// text subtree. Font sizes and coordinates are converted before Flutter lays
/// out and rasterizes each glyph, keeping scalable fonts sharp.
class GiantToadNativeTextOverlay extends StatelessWidget {
  const GiantToadNativeTextOverlay({
    required this.resolution,
    required this.text,
    this.mode = GiantToadViewportMode.fixed,
    this.pixelScale = 2,
    super.key,
  });

  final GiantToadResolution resolution;
  final List<GiantToadNativeText> text;
  final GiantToadViewportMode mode;
  final int pixelScale;

  @override
  Widget build(BuildContext context) => IgnorePointer(
    child: LayoutBuilder(
      builder: (context, constraints) {
        final metrics = _overlayMetrics(
          constraints: constraints,
          resolution: resolution,
          mode: mode,
          pixelScale: pixelScale,
        );
        return Stack(
          children: [
            for (final entry in text)
              Positioned(
                left: metrics.offset.x + entry.x * metrics.scale,
                top: metrics.offset.y + entry.y * metrics.scale,
                child: Text(
                  entry.text,
                  style: (entry.style ?? const TextStyle()).copyWith(
                    fontSize: entry.fontSize * metrics.scale,
                  ),
                ),
              ),
          ],
        );
      },
    ),
  );
}

/// Placement primitive for callers that already have viewport metrics.
class GiantToadOverlay extends StatelessWidget {
  const GiantToadOverlay({
    required this.resolution,
    required this.metrics,
    required this.child,
    super.key,
  });

  final GiantToadResolution resolution;
  final GiantToadViewportMetrics metrics;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: metrics.offset.x,
      top: metrics.offset.y,
      width: metrics.size.x,
      height: metrics.size.y,
      child: ClipRect(
        child: Transform.scale(
          alignment: Alignment.topLeft,
          scale: metrics.scale,
          child: SizedBox(
            width: resolution.width,
            height: resolution.height,
            child: child,
          ),
        ),
      ),
    );
  }
}
