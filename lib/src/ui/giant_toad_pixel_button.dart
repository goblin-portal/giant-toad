import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'giant_toad_ui_theme.dart';

/// A focused, keyboard-activatable pixel-game overlay button.
class GiantToadPixelButton extends StatefulWidget {
  const GiantToadPixelButton({
    required this.onPressed,
    this.label,
    this.child,
    super.key,
    this.autofocus = false,
    this.selected = false,
    this.semanticLabel,
    this.tooltip,
    this.focusNode,
    this.onFocusChange,
  }) : assert(label != null || child != null);

  final String? label;
  final Widget? child;
  final VoidCallback? onPressed;
  final bool autofocus;
  final bool selected;
  final String? semanticLabel;
  final String? tooltip;
  final FocusNode? focusNode;
  final ValueChanged<bool>? onFocusChange;

  @override
  State<GiantToadPixelButton> createState() => _GiantToadPixelButtonState();
}

class _GiantToadPixelButtonState extends State<GiantToadPixelButton> {
  var _focused = false;
  var _hovered = false;
  var _pressed = false;

  bool get _enabled => widget.onPressed != null;

  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    final color = !_enabled
        ? theme.disabledColor
        : _pressed
        ? theme.buttonPressedColor
        : _hovered
        ? Color.lerp(theme.buttonColor, theme.focusColor, 0.14)!
        : widget.selected
        ? Color.lerp(theme.buttonColor, theme.focusColor, 0.22)!
        : theme.buttonColor;
    final borderColor = _focused || widget.selected
        ? theme.focusColor
        : theme.panelBorderColor;

    Widget result = FocusableActionDetector(
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      enabled: _enabled,
      onFocusChange: widget.onFocusChange,
      onShowFocusHighlight: (focused) => setState(() => _focused = focused),
      actions: {
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (_) {
            theme.feedback.onPress?.call();
            widget.onPressed?.call();
            return null;
          },
        ),
      },
      child: MouseRegion(
        onEnter: _enabled
            ? (_) {
                setState(() => _hovered = true);
                theme.feedback.onHover?.call();
              }
            : null,
        onExit: _enabled ? (_) => setState(() => _hovered = false) : null,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: _enabled
              ? () {
                  theme.feedback.onPress?.call();
                  widget.onPressed!();
                }
              : theme.feedback.onDisabled,
          onTapDown: _enabled ? (_) => setState(() => _pressed = true) : null,
          onTapCancel: _enabled ? () => setState(() => _pressed = false) : null,
          onTapUp: _enabled ? (_) => setState(() => _pressed = false) : null,
          child: CustomPaint(
            painter: _PixelButtonPainter(
              fill: color,
              outline: borderColor,
              unit: theme.displayScale,
              pressed: _pressed,
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                theme.padding,
                theme.padding / 2,
                theme.padding,
                theme.padding / 2 + theme.displayScale * 3,
              ),
              child: Transform.translate(
                offset: Offset(0, _pressed ? theme.displayScale : 0),
                child:
                    widget.child ??
                    Text(
                      widget.label!,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.textColor),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
    result = Semantics(
      button: true,
      enabled: _enabled,
      selected: widget.selected,
      label: widget.semanticLabel ?? widget.label,
      onTap: _enabled ? widget.onPressed : null,
      child: result,
    );
    if (widget.tooltip case final message?) {
      result = Tooltip(message: message, child: result);
    }
    return result;
  }
}

class _PixelButtonPainter extends CustomPainter {
  const _PixelButtonPainter({
    required this.fill,
    required this.outline,
    required this.unit,
    required this.pressed,
  });

  final Color fill;
  final Color outline;
  final double unit;
  final bool pressed;

  @override
  void paint(Canvas canvas, Size size) {
    final pixel = unit.clamp(1, double.infinity).toDouble();
    final width = size.width;
    final height = size.height;
    if (width <= pixel * 2 || height <= pixel * 2) return;

    final fillPaint = Paint()
      ..color = fill
      ..isAntiAlias = false;
    // Two axis-aligned rectangles form a hard pixel cutout at each corner.
    // There are deliberately no diagonal edge segments.
    canvas.drawRect(
      Rect.fromLTWH(pixel, 0, width - pixel * 2, height),
      fillPaint,
    );
    canvas.drawRect(
      Rect.fromLTWH(0, pixel, width, height - pixel * 2),
      fillPaint,
    );

    final outlinePaint = Paint()
      ..color = outline
      ..isAntiAlias = false;
    canvas.drawRect(
      Rect.fromLTWH(pixel, 0, width - pixel * 2, pixel),
      outlinePaint,
    );
    canvas.drawRect(
      Rect.fromLTWH(pixel, height - pixel, width - pixel * 2, pixel),
      outlinePaint,
    );
    canvas.drawRect(
      Rect.fromLTWH(0, pixel, pixel, height - pixel * 2),
      outlinePaint,
    );
    canvas.drawRect(
      Rect.fromLTWH(width - pixel, pixel, pixel, height - pixel * 2),
      outlinePaint,
    );

    // Three authored pixels of darker color give the control visual weight.
    final weight = math.min(pixel * 3, height - pixel * 2);
    canvas.drawRect(
      Rect.fromLTWH(pixel, height - pixel - weight, width - pixel * 2, weight),
      Paint()
        ..color = Color.lerp(fill, const Color(0xff000000), 0.3)!
        ..isAntiAlias = false,
    );
  }

  @override
  bool shouldRepaint(_PixelButtonPainter oldDelegate) =>
      fill != oldDelegate.fill ||
      outline != oldDelegate.outline ||
      unit != oldDelegate.unit ||
      pressed != oldDelegate.pressed;
}
