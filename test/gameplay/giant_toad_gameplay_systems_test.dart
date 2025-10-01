import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('task sequences wait, reset, and complete deterministically', () {
    var calls = 0;
    final task = GiantToadSequenceTask<void>([
      GiantToadWaitTask(const Duration(milliseconds: 100)),
      GiantToadActionTask((_, _) {
        calls++;
        return GiantToadTaskStatus.succeeded;
      }),
    ]);
    expect(task.tick(0.05, null), GiantToadTaskStatus.running);
    expect(task.tick(0.05, null), GiantToadTaskStatus.succeeded);
    expect(calls, 1);
    task.reset();
    expect(task.tick(0.1, null), GiantToadTaskStatus.succeeded);
    expect(calls, 2);
  });

  test('path follower advances waypoints and reports arrival', () {
    final follower = GiantToadPathFollower(arrivalTolerance: 0.01)
      ..follow([Vector2(1, 0), Vector2(2, 0)]);
    expect(follower.velocity(Vector2.zero(), 4), Vector2(4, 0));
    expect(follower.velocity(Vector2(1, 0), 4), Vector2(4, 0));
    expect(follower.velocity(Vector2(2, 0), 4), Vector2.zero());
    expect(follower.status, GiantToadPathCompletion.arrived);
  });

  test('perception filters field of view, tags, and occlusion', () {
    final targets = [
      GiantToadPerceptionTarget(
        value: 'front',
        position: Vector2(2, 0),
        tags: const {'enemy'},
      ),
      GiantToadPerceptionTarget(
        value: 'behind',
        position: Vector2(-2, 0),
        tags: const {'enemy'},
      ),
      GiantToadPerceptionTarget(
        value: 'wall',
        position: Vector2(1, 0),
        tags: const {'enemy'},
      ),
    ];
    final visible = GiantToadPerception.visible(
      origin: Vector2.zero(),
      facing: Vector2(1, 0),
      radius: 3,
      fieldOfView: math.pi / 2,
      tag: 'enemy',
      targets: targets,
      isOccluded: (_, target) => target.x == 1,
    );
    expect(visible.map((item) => item.target.value), ['front']);
  });

  test(
    'grid step uses rectangular cell dimensions and blocks before moving',
    () {
      final stepper = GiantToadGridStepper(
        cellSize: Vector2(8, 12),
        duration: const Duration(milliseconds: 100),
      );
      expect(
        stepper.begin(
          body: const Rect.fromLTWH(0, 0, 8, 12),
          direction: GiantToadGridDirection.down,
          isBlocked: (_) => false,
        ),
        isTrue,
      );
      expect(stepper.update(0.05), Vector2(0, 6));
      expect(stepper.update(0.05), Vector2(0, 12));
      expect(stepper.status, GiantToadGridStepResult.completed);
      expect(
        stepper.begin(
          body: const Rect.fromLTWH(0, 12, 8, 12),
          direction: GiantToadGridDirection.right,
          isBlocked: (_) => true,
        ),
        isFalse,
      );
      expect(stepper.status, GiantToadGridStepResult.blocked);
    },
  );

  test('directional resolver mirrors missing left animation', () {
    final resolver = GiantToadDirectionalAnimations<String>(
      states: {
        GiantToadFacing.right: 'walk-side',
        GiantToadFacing.up: 'walk-up',
        GiantToadFacing.down: 'walk-down',
      },
    );
    final left = resolver.resolve(GiantToadFacing.left);
    expect(left.state, 'walk-side');
    expect(left.flipX, isTrue);
    expect(resolver.resolve(GiantToadFacing.upLeft).state, 'walk-up');
  });

  test('ambient light component preserves pixel-light configuration', () {
    final light = GiantToadAmbientLight(
      position: const Offset(7, 9),
      radius: 12,
      shape: GiantToadLightShape.cone,
    );
    final component = GiantToadAmbientLightComponent(
      size: Vector2(100, 80),
      pixelSize: 2,
      lights: [light],
    );
    expect(component.lights.single.shape, GiantToadLightShape.cone);
    expect(component.pixelSize, 2);
  });
}
