enum GiantToadFacing {
  up,
  upRight,
  right,
  downRight,
  down,
  downLeft,
  left,
  upLeft,
}

class GiantToadDirectionalState<T> {
  const GiantToadDirectionalState({required this.state, this.flipX = false});
  final T state;
  final bool flipX;
}

/// Resolves authored 4/8-way states without owning Flame animation ticking.
class GiantToadDirectionalAnimations<T> {
  GiantToadDirectionalAnimations({required Map<GiantToadFacing, T> states})
    : states = Map.unmodifiable(states) {
    if (states.isEmpty) throw ArgumentError.value(states, 'states');
  }

  final Map<GiantToadFacing, T> states;

  GiantToadDirectionalState<T> resolve(GiantToadFacing facing) {
    final exact = states[facing];
    if (exact != null) return GiantToadDirectionalState(state: exact);

    final mirrored = switch (facing) {
      GiantToadFacing.left => GiantToadFacing.right,
      GiantToadFacing.upLeft => GiantToadFacing.upRight,
      GiantToadFacing.downLeft => GiantToadFacing.downRight,
      GiantToadFacing.right => GiantToadFacing.left,
      GiantToadFacing.upRight => GiantToadFacing.upLeft,
      GiantToadFacing.downRight => GiantToadFacing.downLeft,
      _ => null,
    };
    if (mirrored != null && states.containsKey(mirrored)) {
      return GiantToadDirectionalState(
        state: states[mirrored] as T,
        flipX: true,
      );
    }

    for (final fallback in _fallbacks(facing)) {
      if (states.containsKey(fallback)) {
        return GiantToadDirectionalState(state: states[fallback] as T);
      }
    }
    return GiantToadDirectionalState(state: states.values.first);
  }

  static List<GiantToadFacing> _fallbacks(GiantToadFacing facing) =>
      switch (facing) {
        GiantToadFacing.upLeft || GiantToadFacing.upRight => const [
          GiantToadFacing.up,
          GiantToadFacing.left,
          GiantToadFacing.right,
        ],
        GiantToadFacing.downLeft || GiantToadFacing.downRight => const [
          GiantToadFacing.down,
          GiantToadFacing.left,
          GiantToadFacing.right,
        ],
        GiantToadFacing.up || GiantToadFacing.down => const [
          GiantToadFacing.right,
          GiantToadFacing.left,
        ],
        GiantToadFacing.left || GiantToadFacing.right => const [
          GiantToadFacing.down,
          GiantToadFacing.up,
        ],
      };
}
