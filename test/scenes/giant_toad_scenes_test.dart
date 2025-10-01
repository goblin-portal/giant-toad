import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('scene resources dispose once in reverse ownership order', () async {
    final resources = GiantToadSceneResources();
    final order = <String>[];
    expect(resources.own('texture', (value) => order.add(value)), 'texture');
    resources.own('audio', (value) => order.add(value));

    await resources.dispose();
    await resources.dispose();
    expect(order, ['audio', 'texture']);
    expect(resources.disposed, isTrue);
    expect(() => resources.own('late', (value) {}), throwsStateError);
  });

  test('scene route reports Flame push and pop lifecycle names', () {
    String? activated;
    String? deactivated;
    final scene = GiantToadSceneRoute(
      builder: Component.new,
      onActivated: (name) => activated = name,
      onDeactivated: (name) => deactivated = name,
    );
    final previous = GiantToadSceneRoute(builder: Component.new);
    final next = GiantToadSceneRoute(builder: Component.new);

    scene.onPush(previous);
    scene.onPop(next);
    expect(activated, isNull);
    expect(deactivated, '');
  });
}
