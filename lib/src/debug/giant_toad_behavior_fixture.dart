/// One deterministic input scheduled before a simulation tick.
class GiantToadBehaviorInput<S> {
  const GiantToadBehaviorInput({
    required this.tick,
    required this.name,
    required this.apply,
  });

  final int tick;
  final String name;
  final void Function(S state) apply;
}

/// Serializable result of a behavior fixture.
class GiantToadBehaviorResult {
  const GiantToadBehaviorResult({
    required this.name,
    required this.tickRate,
    required this.inputs,
    required this.snapshots,
  });

  final String name;
  final int tickRate;
  final List<Map<String, Object?>> inputs;
  final List<Map<String, Object?>> snapshots;

  Map<String, Object?> toJson() => {
    'name': name,
    'tickRate': tickRate,
    'inputs': inputs,
    'snapshots': snapshots,
  };
}

/// Runs fixed-timestep behavioral fixtures without coupling them to the
/// renderer. Fixtures compare game state and lifecycle outcomes rather than
/// exact pixels.
class GiantToadBehaviorFixture<S> {
  GiantToadBehaviorFixture({
    required this.name,
    required this.create,
    required this.update,
    required this.snapshot,
    this.tickRate = 60,
  }) {
    if (name.isEmpty) throw ArgumentError.value(name, 'name');
    if (tickRate <= 0) throw ArgumentError.value(tickRate, 'tickRate');
  }

  final String name;
  final S Function() create;
  final void Function(S state, double dt) update;
  final Map<String, Object?> Function(S state) snapshot;
  final int tickRate;

  GiantToadBehaviorResult run({
    required int ticks,
    Iterable<int> captureTicks = const [],
    Iterable<GiantToadBehaviorInput<S>> inputs = const [],
  }) {
    if (ticks < 0) throw ArgumentError.value(ticks, 'ticks');
    final state = create();
    final captures = {...captureTicks, 0, ticks};
    if (captures.any((tick) => tick < 0 || tick > ticks)) {
      throw ArgumentError.value(captureTicks, 'captureTicks');
    }
    final byTick = <int, List<GiantToadBehaviorInput<S>>>{};
    for (final input in inputs) {
      if (input.tick < 0 || input.tick >= ticks) {
        throw ArgumentError.value(input.tick, 'input.tick');
      }
      (byTick[input.tick] ??= []).add(input);
    }
    final inputLog = <Map<String, Object?>>[];
    final snapshots = <Map<String, Object?>>[];
    void capture(int tick) {
      snapshots.add({'tick': tick, ...snapshot(state)});
    }

    if (captures.contains(0)) capture(0);
    final dt = 1 / tickRate;
    for (var tick = 0; tick < ticks; tick++) {
      for (final input in byTick[tick] ?? const []) {
        input.apply(state);
        inputLog.add({'tick': tick, 'name': input.name});
      }
      update(state, dt);
      if (captures.contains(tick + 1)) capture(tick + 1);
    }
    return GiantToadBehaviorResult(
      name: name,
      tickRate: tickRate,
      inputs: List.unmodifiable(inputLog),
      snapshots: List.unmodifiable(snapshots),
    );
  }
}
