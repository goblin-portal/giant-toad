import 'package:flutter/material.dart';

import 'giant_toad_icon.dart';
import 'giant_toad_pixel_button.dart';
import 'giant_toad_ui_theme.dart';

class GiantToadIconButton extends StatelessWidget {
  const GiantToadIconButton({
    required this.icon,
    required this.onPressed,
    super.key,
    this.tooltip,
    this.selected = false,
  });
  final IconData icon;
  final VoidCallback? onPressed;
  final String? tooltip;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final button = Semantics(
      button: true,
      label: tooltip,
      child: GiantToadPixelButton(
        onPressed: onPressed,
        selected: selected,
        child: GiantToadIcon(icon),
      ),
    );
    return tooltip == null ? button : Tooltip(message: tooltip!, child: button);
  }
}

class GiantToadModal extends StatelessWidget {
  const GiantToadModal({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) => ColoredBox(
    color: const Color(0xaa000000),
    child: Center(child: GiantToadPixelPanel(child: child)),
  );
}

class GiantToadMenu extends StatelessWidget {
  const GiantToadMenu({required this.title, required this.children, super.key});
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) => GiantToadPixelPanel(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [Text(title), ...children],
    ),
  );
}
