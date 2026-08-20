<div>

<div>

# <span class="kind-method">build</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">dynamic</span> <span class="name">build</span>(

1.  <span id="build-param-context" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">context</span></span>

)

</div>

<div>

## Implementation

``` dart
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
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_editor_controls](../../src_ui_giant_toad_editor_controls/index.md)
3.  [GiantToadButton](../../src_ui_giant_toad_editor_controls/GiantToadButton-class.md)
4.  build method

##### GiantToadButton class

<div>

</div>

</div>

<div>

</div>
