import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

import '../input/giant_toad_actions.dart';

/// Pixel UI focus scope with keyboard/gamepad-style directional navigation.
class GiantToadFocusScope extends StatelessWidget {
  const GiantToadFocusScope({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) => FocusTraversalGroup(
    policy: WidgetOrderTraversalPolicy(),
    child: Shortcuts(
      shortcuts: {
        SingleActivator(LogicalKeyboardKey.arrowDown): NextFocusIntent(),
        SingleActivator(LogicalKeyboardKey.arrowUp): PreviousFocusIntent(),
        SingleActivator(LogicalKeyboardKey.tab): NextFocusIntent(),
        SingleActivator(LogicalKeyboardKey.tab, shift: true):
            PreviousFocusIntent(),
      },
      child: child,
    ),
  );
}

/// Standard semantic actions understood by Giant Toad pixel UI.
abstract final class GiantToadUiActions {
  static const next = GiantToadAction('ui.next');
  static const previous = GiantToadAction('ui.previous');
  static const activate = GiantToadAction('ui.activate');
}

/// Routes semantic Giant Toad actions into Flutter focus traversal.
abstract final class GiantToadFocusActions {
  static bool dispatchState(GiantToadActionState state) {
    var handled = false;
    for (final action in [
      GiantToadUiActions.next,
      GiantToadUiActions.previous,
      GiantToadUiActions.activate,
    ]) {
      if (state.justPressed(action)) handled = dispatch(action) || handled;
    }
    return handled;
  }

  static bool dispatch(GiantToadAction action) {
    final focus = FocusManager.instance.primaryFocus;
    if (action == GiantToadUiActions.next) return focus?.nextFocus() ?? false;
    if (action == GiantToadUiActions.previous) {
      return focus?.previousFocus() ?? false;
    }
    if (action == GiantToadUiActions.activate) {
      final context = focus?.context;
      if (context == null) return false;
      Actions.invoke(context, const ActivateIntent());
      return true;
    }
    return false;
  }
}
