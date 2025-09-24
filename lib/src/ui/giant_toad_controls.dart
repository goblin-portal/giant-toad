import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'giant_toad_pixel_button.dart';
import 'giant_toad_ui_theme.dart';

class GiantToadCheckbox extends StatelessWidget {
  const GiantToadCheckbox({
    required this.value,
    required this.onChanged,
    required this.label,
    super.key,
  });
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    return Semantics(
      checked: value,
      enabled: onChanged != null,
      label: label,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onChanged == null ? null : () => onChanged!(!value),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 18 * theme.displayScale,
              height: 18 * theme.displayScale,
              decoration: BoxDecoration(
                color: theme.buttonColor,
                border: Border.all(
                  color: theme.panelBorderColor,
                  width: theme.borderWidth,
                ),
              ),
              alignment: Alignment.center,
              child: value
                  ? Text(
                      '×',
                      style: TextStyle(color: theme.focusColor, height: 1),
                    )
                  : null,
            ),
            SizedBox(width: 6 * theme.displayScale),
            Text(label),
          ],
        ),
      ),
    );
  }
}

class GiantToadSlider extends StatefulWidget {
  const GiantToadSlider({
    required this.value,
    required this.onChanged,
    this.min = 0,
    this.max = 1,
    this.divisions,
    this.label,
    super.key,
  });
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final ValueChanged<double>? onChanged;

  @override
  State<GiantToadSlider> createState() => _GiantToadSliderState();
}

class _GiantToadSliderState extends State<GiantToadSlider> {
  var focused = false;

  void updateFrom(double x, double width) {
    if (widget.onChanged == null || width <= 0 || widget.max <= widget.min) {
      return;
    }
    var ratio = (x / width).clamp(0.0, 1.0);
    if (widget.divisions case final divisions?) {
      ratio = (ratio * divisions).round() / divisions;
    }
    widget.onChanged!(widget.min + (widget.max - widget.min) * ratio);
  }

  void step(double direction) {
    final steps = widget.divisions ?? 20;
    widget.onChanged?.call(
      (widget.value + direction * (widget.max - widget.min) / steps).clamp(
        widget.min,
        widget.max,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    final enabled = widget.onChanged != null;
    final ratio = widget.max <= widget.min
        ? 0.0
        : ((widget.value - widget.min) / (widget.max - widget.min)).clamp(
            0.0,
            1.0,
          );
    return Semantics(
      slider: true,
      enabled: enabled,
      label: widget.label,
      value: widget.value.toStringAsFixed(2),
      increasedValue: enabled
          ? (widget.value +
                    (widget.max - widget.min) / (widget.divisions ?? 20))
                .clamp(widget.min, widget.max)
                .toStringAsFixed(2)
          : null,
      decreasedValue: enabled
          ? (widget.value -
                    (widget.max - widget.min) / (widget.divisions ?? 20))
                .clamp(widget.min, widget.max)
                .toStringAsFixed(2)
          : null,
      onIncrease: enabled ? () => step(1) : null,
      onDecrease: enabled ? () => step(-1) : null,
      child: Focus(
        canRequestFocus: enabled,
        onFocusChange: (value) => setState(() => focused = value),
        onKeyEvent: (_, event) {
          if (event is! KeyDownEvent) return KeyEventResult.ignored;
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft ||
              event.logicalKey == LogicalKeyboardKey.arrowDown) {
            step(-1);
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowRight ||
              event.logicalKey == LogicalKeyboardKey.arrowUp) {
            step(1);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: LayoutBuilder(
          builder: (context, constraints) => GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapDown: enabled
                ? (details) =>
                      updateFrom(details.localPosition.dx, constraints.maxWidth)
                : null,
            onHorizontalDragUpdate: enabled
                ? (details) =>
                      updateFrom(details.localPosition.dx, constraints.maxWidth)
                : null,
            child: SizedBox(
              height: 12 * theme.displayScale,
              child: CustomPaint(
                painter: _PixelSliderPainter(
                  ratio: ratio,
                  enabled: enabled,
                  focused: focused,
                  theme: theme,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PixelSliderPainter extends CustomPainter {
  const _PixelSliderPainter({
    required this.ratio,
    required this.enabled,
    required this.focused,
    required this.theme,
  });
  final double ratio;
  final bool enabled;
  final bool focused;
  final GiantToadUiTheme theme;

  @override
  void paint(Canvas canvas, Size size) {
    final pixel = theme.displayScale.clamp(1, double.infinity).toDouble();
    final y = ((size.height - 4 * pixel) / 2).roundToDouble();
    final inactive = Paint()
      ..color = enabled ? theme.buttonColor : theme.disabledColor
      ..isAntiAlias = false;
    final active = Paint()
      ..color = theme.focusColor
      ..isAntiAlias = false;
    canvas.drawRect(Rect.fromLTWH(0, y, size.width, 4 * pixel), inactive);
    canvas.drawRect(Rect.fromLTWH(0, y, size.width * ratio, 4 * pixel), active);
    final thumbX = (size.width * ratio).roundToDouble();
    canvas.drawRect(
      Rect.fromCenter(
        center: Offset(thumbX, size.height / 2),
        width: 5 * pixel,
        height: 10 * pixel,
      ),
      Paint()
        ..color = focused ? theme.focusColor : theme.panelBorderColor
        ..isAntiAlias = false,
    );
  }

  @override
  bool shouldRepaint(_PixelSliderPainter oldDelegate) =>
      ratio != oldDelegate.ratio ||
      enabled != oldDelegate.enabled ||
      focused != oldDelegate.focused ||
      theme != oldDelegate.theme;
}

class GiantToadDropdown<T> extends StatefulWidget {
  const GiantToadDropdown({
    required this.value,
    required this.items,
    required this.onChanged,
    this.labelFor,
    super.key,
  });
  final T value;
  final List<T> items;
  final ValueChanged<T?>? onChanged;
  final String Function(T value)? labelFor;

  @override
  State<GiantToadDropdown<T>> createState() => _GiantToadDropdownState<T>();
}

class _GiantToadDropdownState<T> extends State<GiantToadDropdown<T>> {
  final controller = OverlayPortalController();
  final link = LayerLink();

  void select(T value) {
    controller.hide();
    widget.onChanged?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    final enabled = widget.onChanged != null;
    return Semantics(
      button: true,
      enabled: enabled,
      expanded: controller.isShowing,
      value: widget.labelFor?.call(widget.value) ?? '${widget.value}',
      child: CompositedTransformTarget(
        link: link,
        child: OverlayPortal(
          controller: controller,
          overlayChildBuilder: (context) => CompositedTransformFollower(
            link: link,
            targetAnchor: Alignment.bottomLeft,
            followerAnchor: Alignment.topLeft,
            child: Align(
              alignment: Alignment.topLeft,
              child: IntrinsicWidth(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: theme.panelColor,
                    border: Border.all(
                      color: theme.panelBorderColor,
                      width: theme.borderWidth,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      for (final item in widget.items)
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => select(item),
                          child: ColoredBox(
                            color: item == widget.value
                                ? theme.buttonPressedColor
                                : theme.buttonColor,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: theme.padding,
                                vertical: theme.displayScale * 2,
                              ),
                              child: Text(
                                widget.labelFor?.call(item) ?? '$item',
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: enabled ? controller.toggle : null,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: enabled ? theme.buttonColor : theme.disabledColor,
                border: Border.all(
                  color: controller.isShowing
                      ? theme.focusColor
                      : theme.panelBorderColor,
                  width: theme.borderWidth,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: theme.padding,
                  vertical: theme.displayScale * 2,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.labelFor?.call(widget.value) ??
                            '${widget.value}',
                      ),
                    ),
                    const Text('▼'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GiantToadTextField extends StatelessWidget {
  const GiantToadTextField({
    this.controller,
    this.focusNode,
    this.label,
    this.onChanged,
    this.onSubmitted,
    this.enabled = true,
    this.maxLines = 1,
    super.key,
  });
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? label;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final bool enabled;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    return TextField(
      controller: controller,
      focusNode: focusNode,
      enabled: enabled,
      maxLines: maxLines,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      style: TextStyle(color: theme.textColor, fontFamily: theme.fontFamily),
      cursorColor: theme.focusColor,
      cursorWidth: theme.displayScale,
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(color: theme.disabledColor),
        filled: true,
        fillColor: theme.buttonColor,
        isDense: true,
        contentPadding: EdgeInsets.all(theme.padding),
        border: _border(theme.panelBorderColor, theme.borderWidth),
        focusedBorder: _border(theme.focusColor, theme.borderWidth),
        disabledBorder: _border(theme.disabledColor, theme.borderWidth),
      ),
    );
  }

  static OutlineInputBorder _border(Color color, double width) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(color: color, width: width),
      );
}

class GiantToadTabs extends StatelessWidget {
  const GiantToadTabs({
    required this.tabs,
    required this.selected,
    required this.onSelected,
    super.key,
  });
  final List<String> tabs;
  final int selected;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      for (var index = 0; index < tabs.length; index++)
        Expanded(
          child: GiantToadPixelButton(
            label: tabs[index],
            selected: index == selected,
            onPressed: () => onSelected(index),
          ),
        ),
    ],
  );
}

class GiantToadListView<T> extends StatelessWidget {
  const GiantToadListView({
    required this.items,
    required this.selected,
    required this.onSelected,
    this.labelFor,
    this.controller,
    super.key,
  });

  final List<T> items;
  final T selected;
  final ValueChanged<T> onSelected;
  final String Function(T value)? labelFor;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    final theme = GiantToadUiThemeScope.of(context);
    return Semantics(
      container: true,
      label: 'Selectable list',
      child: ListView.builder(
        controller: controller,
        itemExtent: 18 * theme.displayScale,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isSelected = item == selected;
          return Semantics(
            selected: isSelected,
            button: true,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => onSelected(item),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isSelected
                      ? theme.buttonPressedColor
                      : theme.buttonColor,
                  border: Border.all(
                    color: isSelected
                        ? theme.focusColor
                        : theme.panelBorderColor,
                    width: theme.borderWidth,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: theme.padding),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(labelFor?.call(item) ?? '$item'),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class GiantToadToolbar extends StatelessWidget {
  const GiantToadToolbar({required this.children, super.key});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => GiantToadPixelPanel(
    padding: const EdgeInsets.all(4),
    child: Wrap(spacing: 4, runSpacing: 4, children: children),
  );
}

class GiantToadPropertyRow extends StatelessWidget {
  const GiantToadPropertyRow({
    required this.label,
    required this.child,
    this.labelWidth = 96,
    super.key,
  });
  final String label;
  final Widget child;
  final double labelWidth;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      SizedBox(width: labelWidth, child: Text(label)),
      Expanded(child: child),
    ],
  );
}

class GiantToadScrollPanel extends StatelessWidget {
  const GiantToadScrollPanel({required this.child, this.controller, super.key});
  final Widget child;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) => GiantToadPixelPanel(
    child: Scrollbar(
      controller: controller,
      child: SingleChildScrollView(controller: controller, child: child),
    ),
  );
}
