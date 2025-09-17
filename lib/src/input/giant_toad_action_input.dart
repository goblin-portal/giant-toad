import 'package:flame/components.dart';
import 'package:flutter/services.dart';

import 'giant_toad_actions.dart';

/// Stable physical-control identifiers shared by bindings and platform adapters.
abstract final class GiantToadControl {
  static String key(LogicalKeyboardKey key) => 'key:${key.keyId}';
  static String pointerButton(int button) => 'pointer:$button';
  static String touch(String region) => 'touch:$region';
  static String gamepadButton(int gamepad, String button) =>
      'gamepad:$gamepad:button:$button';
  static String gamepadAxis(
    int gamepad,
    String axis, {
    required bool positive,
  }) => 'gamepad:$gamepad:axis:$axis${positive ? '+' : '-'}';
  static String joystick(String axis, {required bool positive}) =>
      'joystick:$axis${positive ? '+' : '-'}';
}

/// Device-neutral input sink for keyboard, pointer, joystick, and gamepad
/// adapters. Platform gamepad packages can forward events here without entering
/// the semantic action layer.
class GiantToadActionInput {
  GiantToadActionInput(this.state, {this.axisDeadzone = 0.2}) {
    if (axisDeadzone < 0 || axisDeadzone >= 1) {
      throw ArgumentError.value(
        axisDeadzone,
        'axisDeadzone',
        'must be in 0...1',
      );
    }
  }

  final GiantToadActionState state;
  final double axisDeadzone;
  final Map<int, Set<String>> _gamepadControls = {};

  void keyboard(LogicalKeyboardKey key, {required bool pressed}) =>
      _digital(GiantToadControl.key(key), pressed);

  void pointer(int button, {required bool pressed}) =>
      _digital(GiantToadControl.pointerButton(button), pressed);

  /// Feeds a named virtual touch region such as `moveLeft` or `jump`.
  void touch(String region, {required bool pressed}) {
    if (region.isEmpty) {
      throw ArgumentError.value(region, 'region', 'must not be empty');
    }
    _digital(GiantToadControl.touch(region), pressed);
  }

  void gamepadButton(int gamepad, String button, {required bool pressed}) {
    final control = GiantToadControl.gamepadButton(gamepad, button);
    _rememberGamepadControl(gamepad, control);
    _digital(control, pressed);
  }

  void gamepadAxis(int gamepad, String axis, double value) {
    final positive = GiantToadControl.gamepadAxis(
      gamepad,
      axis,
      positive: true,
    );
    final negative = GiantToadControl.gamepadAxis(
      gamepad,
      axis,
      positive: false,
    );
    _rememberGamepadControl(gamepad, positive);
    _rememberGamepadControl(gamepad, negative);
    _axis(positive, negative, value);
  }

  /// Releases controls owned by a disconnected physical controller.
  void disconnectGamepad(int gamepad) {
    for (final control
        in _gamepadControls.remove(gamepad) ?? const <String>{}) {
      state.release(control);
    }
  }

  /// Releases every device after focus loss, pause, or input cancellation.
  void releaseAll() {
    _gamepadControls.clear();
    state.clear();
  }

  void _rememberGamepadControl(int gamepad, String control) =>
      (_gamepadControls[gamepad] ??= {}).add(control);

  void joystick(Vector2 delta) {
    _axis(
      GiantToadControl.joystick('x', positive: true),
      GiantToadControl.joystick('x', positive: false),
      delta.x,
    );
    _axis(
      GiantToadControl.joystick('y', positive: true),
      GiantToadControl.joystick('y', positive: false),
      delta.y,
    );
  }

  void _digital(String control, bool pressed) {
    if (pressed) {
      state.press(control);
    } else {
      state.release(control);
    }
  }

  void _axis(String positive, String negative, double rawValue) {
    if (!rawValue.isFinite || rawValue < -1 || rawValue > 1) {
      throw ArgumentError.value(
        rawValue,
        'value',
        'must be finite and in -1...1',
      );
    }
    final value = rawValue.abs() <= axisDeadzone ? 0.0 : rawValue;
    state.setValue(positive, value > 0 ? value : 0);
    state.setValue(negative, value < 0 ? -value : 0);
  }
}

/// Flame keyboard component that feeds a [GiantToadActionInput]. Add it to a
/// game using `HasKeyboardHandlerComponents`.
class GiantToadKeyboardActions extends Component with KeyboardHandler {
  GiantToadKeyboardActions(this.input);

  final GiantToadActionInput input;
  Set<LogicalKeyboardKey> _previous = const {};

  @override
  bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    for (final key in _previous.difference(keysPressed)) {
      input.keyboard(key, pressed: false);
    }
    for (final key in keysPressed.difference(_previous)) {
      input.keyboard(key, pressed: true);
    }
    _previous = Set.unmodifiable(keysPressed);
    return false;
  }

  @override
  void onRemove() {
    for (final key in _previous) {
      input.keyboard(key, pressed: false);
    }
    _previous = const {};
    super.onRemove();
  }
}

/// Polls Flame's standard [JoystickComponent] and forwards its normalized delta
/// into semantic action bindings.
class GiantToadJoystickActions extends Component {
  GiantToadJoystickActions({required this.joystick, required this.input});

  final JoystickComponent joystick;
  final GiantToadActionInput input;

  @override
  void update(double dt) {
    input.joystick(joystick.relativeDelta);
  }

  @override
  void onRemove() {
    input.joystick(Vector2.zero());
    super.onRemove();
  }
}
