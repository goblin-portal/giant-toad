import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/text.dart';

/// Named diagnostics evaluated only while the overlay is visible.
class GiantToadDiagnostics {
  final Map<String, Object? Function()> _values = {};

  void register(String name, Object? Function() read) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'must not be empty');
    }
    _values[name] = read;
  }

  void unregister(String name) => _values.remove(name);

  Map<String, Object?> snapshot() => {
    for (final entry in _values.entries) entry.key: entry.value(),
  };
}

/// World-independent Flame component for deterministic pixel diagnostics.
class GiantToadDebugOverlay extends PositionComponent {
  GiantToadDebugOverlay({
    required this.diagnostics,
    this.visible = false,
    TextPaint? textPaint,
    this.lineHeight = 12,
    super.position,
    super.priority = 0x7ffffffe,
  }) : textPaint =
           textPaint ??
           TextPaint(
             style: const TextStyle(color: Color(0xffffffff), fontSize: 10),
           );

  final GiantToadDiagnostics diagnostics;
  final TextPaint textPaint;
  final double lineHeight;
  bool visible;

  @override
  void render(Canvas canvas) {
    if (!visible) return;
    var y = 0.0;
    for (final entry in diagnostics.snapshot().entries) {
      textPaint.render(canvas, '${entry.key}: ${entry.value}', Vector2(0, y));
      y += lineHeight;
    }
  }
}
