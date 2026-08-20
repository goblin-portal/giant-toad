<div>

<div>

# <span class="kind-method">run</span> method

</div>

<div>

<span class="returntype">[GiantToadBehaviorResult](../../src_debug_giant_toad_behavior_fixture/GiantToadBehaviorResult-class.md)</span> <span class="name">run</span>({

1.  <span id="run-param-ticks" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">ticks</span>, </span>
2.  <span id="run-param-captureTicks" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>\></span></span> <span class="parameter-name">captureTicks</span> = <span class="default-value">const \[\]</span>, </span>
3.  <span id="run-param-inputs" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadBehaviorInput](../../src_debug_giant_toad_behavior_fixture/GiantToadBehaviorInput-class.md)<span class="signature">\<<span class="type-parameter">S</span>\></span></span>\></span></span> <span class="parameter-name">inputs</span> = <span class="default-value">const \[\]</span>, </span>

})

</div>

<div>

## Implementation

``` dart
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
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_behavior_fixture](../../src_debug_giant_toad_behavior_fixture/index.md)
3.  [GiantToadBehaviorFixture<span class="signature">\<<span class="type-parameter">S</span>\></span>](../../src_debug_giant_toad_behavior_fixture/GiantToadBehaviorFixture-class.md)
4.  run method

##### GiantToadBehaviorFixture class

<div>

</div>

</div>

<div>

</div>
