import 'dart:ui';

import 'package:flame/components.dart';

/// Named frame event emitted by [GiantToadAnimationStates].
class GiantToadAnimationEvent<T> {
  const GiantToadAnimationEvent({
    required this.state,
    required this.frame,
    required this.name,
  });

  final T state;
  final int frame;
  final String name;
}

/// Thin state/event policy over Flame's [SpriteAnimationGroupComponent].
///
/// Flame remains responsible for animation ticking and rendering. This adds the
/// state-machine behavior used repeatedly by Giant Toad games: named frame
/// events, one-shot playback, facing, and transition after completion.
class GiantToadAnimationStates<T> extends SpriteAnimationGroupComponent<T> {
  GiantToadAnimationStates({
    required Map<T, SpriteAnimation> animations,
    required T initial,
    this.frameEvents = const {},
    super.position,
    super.size,
    super.anchor,
    super.priority,
    super.key,
  }) : super(
         animations: animations,
         current: initial,
         autoResize: size == null,
       ) {
    paint
      ..isAntiAlias = false
      ..filterQuality = FilterQuality.none;
    _wire(initial);
  }

  final Map<T, Map<int, String>> frameEvents;
  final List<GiantToadAnimationEvent<T>> _events = [];
  T? _returnState;
  bool _oneShotInterruptible = true;

  bool get finished => animationTicker?.done() ?? false;
  bool get playingOneShot => _returnState != null;
  int get frame => animationTicker?.currentIndex ?? 0;
  bool get facingLeft => scale.x < 0;

  set facingLeft(bool value) {
    final magnitude = scale.x.abs();
    scale.x = value ? -magnitude : magnitude;
  }

  void play(
    T state, {
    bool restart = false,
    bool? faceLeft,
    bool force = false,
  }) {
    if (playingOneShot && !_oneShotInterruptible && !force) return;
    if (current != state) {
      current = state;
      _wire(state);
    } else if (restart) {
      animationTicker?.reset();
    }
    _returnState = null;
    if (faceLeft != null) facingLeft = faceLeft;
  }

  void playOnce(
    T state, {
    required T then,
    bool? faceLeft,
    bool interruptible = false,
  }) {
    current = state;
    animationTicker?.reset();
    _returnState = then;
    _oneShotInterruptible = interruptible;
    if (faceLeft != null) facingLeft = faceLeft;
    _wire(state);
  }

  GiantToadAnimationEvent<T>? consumeEvent() =>
      _events.isEmpty ? null : _events.removeAt(0);

  void _wire(T state) {
    final ticker = animationTicker;
    if (ticker == null) return;
    ticker.onFrame = (frame) {
      final name = frameEvents[state]?[frame];
      if (name != null) {
        _events.add(
          GiantToadAnimationEvent(state: state, frame: frame, name: name),
        );
      }
    };
    ticker.onComplete = () {
      final next = _returnState;
      _returnState = null;
      _oneShotInterruptible = true;
      if (next != null) play(next);
    };
  }
}
