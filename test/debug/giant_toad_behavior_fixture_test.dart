import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('fixed-timestep fixture records inputs and state, not pixels', () {
    final fixture = GiantToadBehaviorFixture<_State>(
      name: 'movement',
      tickRate: 10,
      create: _State.new,
      update: (state, dt) => state.position += state.velocity * dt,
      snapshot: (state) => {
        'position': double.parse(state.position.toStringAsFixed(3)),
        'moving': state.velocity != 0,
      },
    );

    final result = fixture.run(
      ticks: 4,
      captureTicks: const [2],
      inputs: [
        GiantToadBehaviorInput(
          tick: 0,
          name: 'right-down',
          apply: (state) => state.velocity = 5,
        ),
        GiantToadBehaviorInput(
          tick: 2,
          name: 'right-up',
          apply: (state) => state.velocity = 0,
        ),
      ],
    );

    expect(result.toJson(), {
      'name': 'movement',
      'tickRate': 10,
      'inputs': [
        {'tick': 0, 'name': 'right-down'},
        {'tick': 2, 'name': 'right-up'},
      ],
      'snapshots': [
        {'tick': 0, 'position': 0.0, 'moving': false},
        {'tick': 2, 'position': 1.0, 'moving': true},
        {'tick': 4, 'position': 1.0, 'moving': false},
      ],
    });
  });

  test('fixture rejects inputs outside the simulated interval', () {
    final fixture = GiantToadBehaviorFixture<int>(
      name: 'bounds',
      create: () => 0,
      update: (_, _) {},
      snapshot: (state) => {'value': state},
    );
    expect(
      () => fixture.run(
        ticks: 1,
        inputs: [GiantToadBehaviorInput(tick: 1, name: 'late', apply: (_) {})],
      ),
      throwsArgumentError,
    );
  });
}

class _State {
  double position = 0;
  double velocity = 0;
}
