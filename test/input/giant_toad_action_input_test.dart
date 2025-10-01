import 'package:flame/components.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  const moveRight = GiantToadAction('move.right');
  const moveLeft = GiantToadAction('move.left');
  const fire = GiantToadAction('fire');

  late GiantToadActionState state;
  late GiantToadActionInput input;

  setUp(() {
    state = GiantToadActionState(
      GiantToadActionMap({
        moveRight: [
          GiantToadControl.key(LogicalKeyboardKey.arrowRight),
          GiantToadControl.joystick('x', positive: true),
          GiantToadControl.gamepadAxis(0, 'leftX', positive: true),
        ],
        moveLeft: [GiantToadControl.joystick('x', positive: false)],
        fire: [
          GiantToadControl.pointerButton(1),
          GiantToadControl.touch('fire'),
          GiantToadControl.gamepadButton(0, 'south'),
        ],
      }),
    );
    input = GiantToadActionInput(state);
  });

  test('tracks held and one-frame keyboard action edges', () {
    input.keyboard(LogicalKeyboardKey.arrowRight, pressed: true);
    expect(state.isPressed(moveRight), isTrue);
    expect(state.justPressed(moveRight), isTrue);
    state.endFrame();
    expect(state.justPressed(moveRight), isFalse);

    input.keyboard(LogicalKeyboardKey.arrowRight, pressed: false);
    expect(state.isPressed(moveRight), isFalse);
    expect(state.justReleased(moveRight), isTrue);
  });

  test('combines pointer and gamepad buttons without premature release', () {
    input.pointer(1, pressed: true);
    input.gamepadButton(0, 'south', pressed: true);
    input.pointer(1, pressed: false);
    expect(state.isPressed(fire), isTrue);
    expect(state.justReleased(fire), isFalse);

    input.gamepadButton(0, 'south', pressed: false);
    expect(state.justReleased(fire), isTrue);
  });

  test('applies deadzones and directional joystick values', () {
    input.joystick(Vector2(0.1, 0));
    expect(state.isPressed(moveRight), isFalse);
    input.joystick(Vector2(0.75, 0));
    expect(state.value(moveRight), 0.75);
    input.joystick(Vector2(-0.5, 0));
    expect(state.value(moveRight), 0);
    expect(state.value(moveLeft), 0.5);
  });

  test('touch regions feed actions and validate names', () {
    input.touch('fire', pressed: true);
    expect(state.isPressed(fire), isTrue);
    input.touch('fire', pressed: false);
    expect(state.justReleased(fire), isTrue);
    expect(() => input.touch('', pressed: true), throwsArgumentError);
  });

  test('disconnect and focus loss release only relevant held controls', () {
    input.pointer(1, pressed: true);
    input.gamepadButton(0, 'south', pressed: true);
    input.disconnectGamepad(0);
    expect(state.isPressed(fire), isTrue);
    input.releaseAll();
    expect(state.isPressed(fire), isFalse);
    expect(state.justReleased(fire), isTrue);
  });

  test('accepts normalized gamepad axes and rejects invalid values', () {
    input.gamepadAxis(0, 'leftX', 0.6);
    expect(state.value(moveRight), 0.6);
    expect(() => input.gamepadAxis(0, 'leftX', 2), throwsArgumentError);
  });
}
