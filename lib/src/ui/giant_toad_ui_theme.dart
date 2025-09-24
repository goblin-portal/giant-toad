import 'package:flutter/material.dart';

import 'giant_toad_ui_feedback.dart';

/// Shared visual tokens for Giant Toad pixel-game overlays.
@immutable
class GiantToadUiTheme {
  const GiantToadUiTheme({
    this.panelColor = const Color(0xff1b1b2b),
    this.panelBorderColor = const Color(0xfff4f4f4),
    this.buttonColor = const Color(0xff34344e),
    this.buttonPressedColor = const Color(0xff51516f),
    this.focusColor = const Color(0xffffd166),
    this.textColor = const Color(0xfff4f4f4),
    this.disabledColor = const Color(0xff77778c),
    this.borderWidth = 1,
    this.padding = 8,
    this.fontFamily = 'monospace',
    this.fontSize = 10,
    this.displayScale = 1,
    this.feedback = const GiantToadUiFeedback(),
  });

  final Color panelColor;
  final Color panelBorderColor;
  final Color buttonColor;
  final Color buttonPressedColor;
  final Color focusColor;
  final Color textColor;
  final Color disabledColor;
  final double borderWidth;
  final double padding;
  final String? fontFamily;
  final double fontSize;
  final double displayScale;
  final GiantToadUiFeedback feedback;
}

/// Builds a Material host theme from Giant Toad's canonical UI tokens.
///
/// Editor applications can use standard Flutter layout and accessibility
/// widgets without maintaining a second, visually divergent token system.
ThemeData giantToadMaterialTheme(
  GiantToadUiTheme theme, {
  Color backgroundColor = const Color(0xff11111b),
  Color? errorColor,
}) {
  final scheme = ColorScheme.fromSeed(
    seedColor: theme.focusColor,
    brightness: Brightness.dark,
    surface: theme.panelColor,
    error: errorColor ?? const Color(0xffef6f6c),
  );
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(
      color: theme.panelBorderColor,
      width: theme.borderWidth,
    ),
  );
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: scheme,
    scaffoldBackgroundColor: backgroundColor,
    canvasColor: theme.panelColor,
    cardColor: theme.panelColor,
    dividerColor: theme.panelBorderColor,
    focusColor: theme.focusColor,
    hoverColor: theme.focusColor.withValues(alpha: 0.12),
    fontFamily: theme.fontFamily,
    iconTheme: IconThemeData(color: theme.textColor),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: theme.buttonColor,
      isDense: true,
      contentPadding: EdgeInsets.all(theme.padding),
      border: border,
      enabledBorder: border,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(
          color: theme.focusColor,
          width: theme.borderWidth,
        ),
      ),
    ),
    cardTheme: CardThemeData(
      color: theme.panelColor,
      margin: EdgeInsets.all(theme.displayScale * 2),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.panelBorderColor,
          width: theme.borderWidth,
        ),
        borderRadius: BorderRadius.zero,
      ),
    ),
    visualDensity: VisualDensity.compact,
  );
}

/// Provides a [GiantToadUiTheme] to game overlay widgets.
class GiantToadUiThemeScope extends StatelessWidget {
  const GiantToadUiThemeScope({
    required this.theme,
    required this.child,
    super.key,
  });

  final GiantToadUiTheme theme;
  final Widget child;

  static GiantToadUiTheme of(BuildContext context) =>
      context
          .dependOnInheritedWidgetOfExactType<_GiantToadUiThemeInherited>()
          ?.theme ??
      const GiantToadUiTheme();

  @override
  Widget build(BuildContext context) => _GiantToadUiThemeInherited(
    theme: theme,
    child: DefaultTextStyle.merge(
      style: TextStyle(
        color: theme.textColor,
        fontFamily: theme.fontFamily,
        fontSize: theme.fontSize * theme.displayScale,
      ),
      child: child,
    ),
  );
}

class _GiantToadUiThemeInherited extends InheritedWidget {
  const _GiantToadUiThemeInherited({required this.theme, required super.child});
  final GiantToadUiTheme theme;
  @override
  bool updateShouldNotify(_GiantToadUiThemeInherited oldWidget) =>
      oldWidget.theme != theme;
}

/// A pixel-styled panel for use in a Flutter game overlay.
class GiantToadPixelPanel extends StatelessWidget {
  const GiantToadPixelPanel({required this.child, super.key, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    return CustomPaint(
      painter: _PixelPanelPainter(
        fill: theme.panelColor,
        outline: theme.panelBorderColor,
        unit: theme.displayScale,
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(theme.padding),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: theme.textColor,
            fontFamily: theme.fontFamily,
          ),
          child: child,
        ),
      ),
    );
  }
}

class _PixelPanelPainter extends CustomPainter {
  const _PixelPanelPainter({
    required this.fill,
    required this.outline,
    required this.unit,
  });

  final Color fill;
  final Color outline;
  final double unit;

  @override
  void paint(Canvas canvas, Size size) {
    final pixel = unit.clamp(1, double.infinity).toDouble();
    if (size.width <= pixel * 2 || size.height <= pixel * 2) return;
    final fillPaint = Paint()
      ..color = fill
      ..isAntiAlias = false;
    canvas.drawRect(
      Rect.fromLTWH(pixel, 0, size.width - pixel * 2, size.height),
      fillPaint,
    );
    canvas.drawRect(
      Rect.fromLTWH(0, pixel, size.width, size.height - pixel * 2),
      fillPaint,
    );
    final border = Paint()
      ..color = outline
      ..isAntiAlias = false;
    canvas.drawRect(
      Rect.fromLTWH(pixel, 0, size.width - pixel * 2, pixel),
      border,
    );
    canvas.drawRect(
      Rect.fromLTWH(pixel, size.height - pixel, size.width - pixel * 2, pixel),
      border,
    );
    canvas.drawRect(
      Rect.fromLTWH(0, pixel, pixel, size.height - pixel * 2),
      border,
    );
    canvas.drawRect(
      Rect.fromLTWH(size.width - pixel, pixel, pixel, size.height - pixel * 2),
      border,
    );
  }

  @override
  bool shouldRepaint(_PixelPanelPainter oldDelegate) =>
      fill != oldDelegate.fill ||
      outline != oldDelegate.outline ||
      unit != oldDelegate.unit;
}
