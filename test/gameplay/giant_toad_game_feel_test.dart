import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('jump assist supports input buffering and coyote time', () {
    final jump = GiantToadJumpAssist(bufferDuration: 0.12, coyoteDuration: 0.1);
    jump.update(0.01, grounded: true, jumpPressed: false);
    jump.update(0.05, grounded: false, jumpPressed: true);
    expect(jump.canJump, isTrue);
    expect(jump.consumeJump(), isTrue);
    expect(jump.consumeJump(), isFalse);

    jump.update(0.01, grounded: false, jumpPressed: true);
    expect(jump.canJump, isFalse);
    jump.update(0.05, grounded: true, jumpPressed: false);
    expect(jump.canJump, isTrue);
  });

  test(
    'hit pause keeps the longest pause and returns unscaled time afterward',
    () {
      final pause = GiantToadHitPause()..trigger(0.06);
      pause.trigger(0.02);
      expect(pause.remaining, 0.06);
      expect(pause.scale(0.04), 0);
      expect(pause.scale(0.03), 0);
      expect(pause.scale(0.016), 0.016);
    },
  );

  test('screen flash fades and floating text expires while moving', () {
    final flash = GiantToadScreenFlash()..trigger(const Color(0xffffffff), 0.1);
    flash.update(0.025);
    expect(flash.opacity, closeTo(0.75, 0.001));
    flash.update(0.1);
    expect(flash.active, isFalse);

    final text = GiantToadFloatingText(
      text: '+hit',
      position: Vector2(10, 10),
      lifetime: 0.5,
      velocity: Vector2(0, -10),
    );
    text.update(0.25);
    expect(text.position.y, 7.5);
    expect(text.alive, isTrue);
    text.update(0.3);
    expect(text.alive, isFalse);
  });
}
