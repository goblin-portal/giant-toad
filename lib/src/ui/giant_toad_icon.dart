import 'package:flutter/widgets.dart';

import 'giant_toad_ui_theme.dart';

/// Theme-coloured icon primitive for pixel-game controls.
class GiantToadIcon extends StatelessWidget {
  const GiantToadIcon(this.icon, {super.key, this.size});
  final IconData icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    return Icon(icon, size: size ?? 16, color: theme.textColor);
  }
}
