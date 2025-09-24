import 'package:flutter/widgets.dart';

import 'giant_toad_pixel_button.dart';
import 'giant_toad_ui_theme.dart';

class GiantToadDialogueBox extends StatelessWidget {
  const GiantToadDialogueBox({
    required this.text,
    super.key,
    this.choices = const [],
  });
  final String text;
  final List<GiantToadPixelButton> choices;
  @override
  Widget build(BuildContext context) => GiantToadPixelPanel(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [Text(text), ...choices],
    ),
  );
}

class GiantToadTooltip extends StatelessWidget {
  const GiantToadTooltip({required this.message, super.key});
  final String message;
  @override
  Widget build(BuildContext context) =>
      GiantToadPixelPanel(child: Text(message));
}

class GiantToadProgressBar extends StatelessWidget {
  const GiantToadProgressBar({required this.value, super.key});
  final double value;
  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    return SizedBox(
      height: 8,
      child: DecoratedBox(
        decoration: BoxDecoration(color: theme.disabledColor),
        child: FractionallySizedBox(
          alignment: Alignment.centerLeft,
          widthFactor: value.clamp(0, 1),
          child: ColoredBox(color: theme.focusColor),
        ),
      ),
    );
  }
}

class GiantToadItemSlot extends StatelessWidget {
  const GiantToadItemSlot({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) =>
      GiantToadPixelPanel(padding: EdgeInsets.zero, child: child);
}

class GiantToadHotbar extends StatelessWidget {
  const GiantToadHotbar({required this.slots, super.key});
  final List<Widget> slots;
  @override
  Widget build(BuildContext context) =>
      Row(mainAxisSize: MainAxisSize.min, children: slots);
}
