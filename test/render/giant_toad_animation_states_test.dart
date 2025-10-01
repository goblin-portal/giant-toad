import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test(
    'one-shot animation emits frame event and returns to requested state',
    () async {
      final sprite = Sprite(await _image());
      SpriteAnimation animation(int count, {required bool loop}) =>
          SpriteAnimation.spriteList(
            List.filled(count, sprite),
            stepTime: 0.1,
            loop: loop,
          );
      final states = GiantToadAnimationStates<String>(
        animations: {
          'idle': animation(2, loop: true),
          'attack': animation(3, loop: false),
        },
        initial: 'idle',
        frameEvents: const {
          'attack': {1: 'hit'},
        },
        size: Vector2.all(16),
      );

      states.playOnce('attack', then: 'idle', faceLeft: true);
      states.update(0.11);
      final event = states.consumeEvent();
      expect(event?.name, 'hit');
      expect(event?.frame, 1);
      expect(states.facingLeft, isTrue);
      states.update(0.25);
      expect(states.current, 'idle');
      expect(states.finished, isFalse);
    },
  );

  test('play does not restart an unchanged state unless requested', () async {
    final sprite = Sprite(await _image());
    final states = GiantToadAnimationStates<String>(
      animations: {
        'walk': SpriteAnimation.spriteList([sprite, sprite], stepTime: 0.1),
      },
      initial: 'walk',
      size: Vector2.all(16),
    );
    states.update(0.11);
    expect(states.frame, 1);
    states.play('walk');
    expect(states.frame, 1);
    states.play('walk', restart: true);
    expect(states.frame, 0);
  });
}

Future<Image> _image() {
  final recorder = PictureRecorder();
  Canvas(recorder).drawRect(
    const Rect.fromLTWH(0, 0, 2, 2),
    Paint()..color = const Color(0xffffffff),
  );
  return recorder.endRecording().toImage(2, 2);
}
