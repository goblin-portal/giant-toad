import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'giant_toad_pixel_button.dart';
import 'giant_toad_ui_theme.dart';

/// Giant Toad-styled native form field for editor and accessibility surfaces.
class GiantToadFormField extends StatelessWidget {
  const GiantToadFormField({
    this.controller,
    this.initialValue,
    this.focusNode,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
    this.onFieldSubmitted,
    this.onSubmitted,
    this.validator,
    this.enabled,
    this.readOnly = false,
    this.maxLines = 1,
    this.minLines,
    this.autofocus = false,
    this.textInputAction,
    super.key,
  });

  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final InputDecoration decoration;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;
  final bool? enabled;
  final bool readOnly;
  final int? maxLines;
  final int? minLines;
  final bool autofocus;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.zero,
      borderSide: BorderSide(
        color: theme.panelBorderColor,
        width: theme.borderWidth,
      ),
    );
    return TextFormField(
      controller: controller,
      initialValue: controller == null ? initialValue : null,
      focusNode: focusNode,
      decoration: decoration.copyWith(
        filled: decoration.filled ?? true,
        fillColor: decoration.fillColor ?? theme.buttonColor,
        isDense: decoration.isDense ?? true,
        border: decoration.border ?? border,
        enabledBorder: decoration.enabledBorder ?? border,
        focusedBorder:
            decoration.focusedBorder ??
            border.copyWith(
              borderSide: BorderSide(
                color: theme.focusColor,
                width: theme.borderWidth,
              ),
            ),
      ),
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted ?? onSubmitted,
      validator: validator,
      enabled: enabled,
      readOnly: readOnly,
      maxLines: maxLines,
      minLines: minLines,
      autofocus: autofocus,
      textInputAction: textInputAction,
      style: TextStyle(color: theme.textColor, fontFamily: theme.fontFamily),
    );
  }
}

class GiantToadSelectFormField<T> extends StatelessWidget {
  const GiantToadSelectFormField({
    required this.items,
    this.value,
    this.initialValue,
    this.onChanged,
    this.decoration = const InputDecoration(),
    this.hint,
    this.validator,
    this.isExpanded = false,
    super.key,
  });
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final T? initialValue;
  final ValueChanged<T?>? onChanged;
  final InputDecoration decoration;
  final Widget? hint;
  final FormFieldValidator<T>? validator;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) => DropdownButtonFormField<T>(
    initialValue: initialValue ?? value,
    items: items,
    onChanged: onChanged,
    decoration: decoration,
    hint: hint,
    validator: validator,
    isExpanded: isExpanded,
  );
}

enum GiantToadButtonVariant { primary, secondary, outline, quiet, destructive }

class GiantToadButton extends StatelessWidget {
  const GiantToadButton({
    this.child,
    this.label,
    required this.onPressed,
    this.variant = GiantToadButtonVariant.secondary,
    this.icon,
    super.key,
  }) : assert(child != null || label != null);
  final Widget? child;
  final Widget? label;
  final Widget? icon;
  final VoidCallback? onPressed;
  final GiantToadButtonVariant variant;

  @override
  Widget build(BuildContext context) {
    final body = child ?? label!;
    final content = icon == null
        ? body
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon!,
              const SizedBox(width: 6),
              Flexible(child: body),
            ],
          );
    return switch (variant) {
      GiantToadButtonVariant.primary => FilledButton(
        onPressed: onPressed,
        child: content,
      ),
      GiantToadButtonVariant.outline => OutlinedButton(
        onPressed: onPressed,
        child: content,
      ),
      GiantToadButtonVariant.quiet => TextButton(
        onPressed: onPressed,
        child: content,
      ),
      GiantToadButtonVariant.destructive => FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
        onPressed: onPressed,
        child: content,
      ),
      GiantToadButtonVariant.secondary => GiantToadPixelButton(
        onPressed: onPressed,
        child: content,
      ),
    };
  }
}

class GiantToadListTile extends StatelessWidget {
  const GiantToadListTile({
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.selected = false,
    this.enabled = true,
    this.dense = true,
    this.onTap,
    super.key,
  });
  final Widget? leading;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final bool selected;
  final bool enabled;
  final bool dense;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) => ListTile(
    dense: dense,
    leading: leading,
    title: title,
    subtitle: subtitle,
    trailing: trailing,
    selected: selected,
    enabled: enabled,
    onTap: onTap,
  );
}

class GiantToadExpansionPanel extends StatelessWidget {
  const GiantToadExpansionPanel({
    required this.title,
    required this.children,
    this.initiallyExpanded = false,
    this.onExpansionChanged,
    this.subtitle,
    this.trailing,
    super.key,
  });
  final Widget title;
  final List<Widget> children;
  final bool initiallyExpanded;
  final ValueChanged<bool>? onExpansionChanged;
  final Widget? subtitle;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) => ExpansionTile(
    title: title,
    subtitle: subtitle,
    trailing: trailing,
    initiallyExpanded: initiallyExpanded,
    onExpansionChanged: onExpansionChanged,
    children: children,
  );
}

class GiantToadCard extends StatelessWidget {
  const GiantToadCard({required this.child, this.margin, super.key});
  final Widget child;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) => Card(margin: margin, child: child);
}

class GiantToadEditorIconButton extends StatelessWidget {
  const GiantToadEditorIconButton({
    required this.icon,
    required this.onPressed,
    this.tooltip,
    this.color,
    this.iconSize,
    super.key,
  });
  final Widget icon;
  final VoidCallback? onPressed;
  final String? tooltip;
  final Color? color;
  final double? iconSize;
  @override
  Widget build(BuildContext context) => IconButton(
    icon: icon,
    onPressed: onPressed,
    tooltip: tooltip,
    color: color,
    iconSize: iconSize,
  );
}

class GiantToadTextButton extends StatelessWidget {
  const GiantToadTextButton({
    required this.onPressed,
    required this.child,
    this.style,
    super.key,
  });
  final VoidCallback? onPressed;
  final Widget child;
  final ButtonStyle? style;
  @override
  Widget build(BuildContext context) =>
      TextButton(onPressed: onPressed, style: style, child: child);
}

class GiantToadOutlinedButton extends StatelessWidget {
  const GiantToadOutlinedButton({
    required this.onPressed,
    required this.child,
    this.style,
    super.key,
  });
  final VoidCallback? onPressed;
  final Widget child;
  final ButtonStyle? style;
  @override
  Widget build(BuildContext context) =>
      OutlinedButton(onPressed: onPressed, style: style, child: child);
}

class GiantToadFilledButton extends StatelessWidget {
  const GiantToadFilledButton({
    required this.onPressed,
    required this.child,
    this.style,
    super.key,
  });
  final VoidCallback? onPressed;
  final Widget child;
  final ButtonStyle? style;
  @override
  Widget build(BuildContext context) =>
      FilledButton(onPressed: onPressed, style: style, child: child);
}

class GiantToadEditorCheckbox extends StatelessWidget {
  const GiantToadEditorCheckbox({
    required this.value,
    required this.onChanged,
    this.tristate = false,
    super.key,
  });
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final bool tristate;
  @override
  Widget build(BuildContext context) =>
      Checkbox(value: value, onChanged: onChanged, tristate: tristate);
}

class GiantToadTabBar extends StatelessWidget {
  const GiantToadTabBar({
    required this.tabs,
    this.controller,
    this.isScrollable = false,
    super.key,
  });
  final List<Widget> tabs;
  final TabController? controller;
  final bool isScrollable;
  @override
  Widget build(BuildContext context) =>
      TabBar(tabs: tabs, controller: controller, isScrollable: isScrollable);
}

class GiantToadDialog extends StatelessWidget {
  const GiantToadDialog({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) => Dialog(child: child);
}

class GiantToadAlertDialog extends StatelessWidget {
  const GiantToadAlertDialog({
    this.title,
    this.content,
    this.actions,
    super.key,
  });
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) =>
      AlertDialog(title: title, content: content, actions: actions);
}

class GiantToadPopupMenuButton<T> extends StatelessWidget {
  const GiantToadPopupMenuButton({
    required this.itemBuilder,
    this.onSelected,
    this.icon,
    this.tooltip,
    super.key,
  });
  final PopupMenuItemBuilder<T> itemBuilder;
  final PopupMenuItemSelected<T>? onSelected;
  final Widget? icon;
  final String? tooltip;
  @override
  Widget build(BuildContext context) => PopupMenuButton<T>(
    itemBuilder: itemBuilder,
    onSelected: onSelected,
    icon: icon,
    tooltip: tooltip,
  );
}
