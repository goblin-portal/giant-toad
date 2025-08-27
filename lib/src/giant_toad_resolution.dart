/// The baseline logical dimensions for a [GiantToadGame].
///
/// Giant Toad preserves [width] by default and expands the visible logical
/// height to match the available display. Use a fixed viewport explicitly when
/// a game requires a locked aspect ratio.
class GiantToadResolution {
  GiantToadResolution({required this.width, required this.height}) {
    if (!width.isFinite || width <= 0) {
      throw ArgumentError.value(width, 'width', 'must be finite and positive');
    }
    if (!height.isFinite || height <= 0) {
      throw ArgumentError.value(
        height,
        'height',
        'must be finite and positive',
      );
    }
  }

  /// The fixed logical width of the game's canvas.
  final double width;

  /// The baseline logical height used by an explicitly fixed viewport.
  final double height;
}
