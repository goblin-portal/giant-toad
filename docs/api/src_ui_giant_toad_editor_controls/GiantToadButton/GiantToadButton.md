<div>

<div>

# <span class="kind-constructor">GiantToadButton</span> constructor

</div>

<div>

const <span class="name">GiantToadButton</span>({

1.  <span id="param-child" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">child</span>, </span>
2.  <span id="param-label" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">label</span>, </span>
3.  <span id="param-onPressed" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">onPressed</span>, </span>
4.  <span id="param-variant" class="parameter"><span class="type-annotation">[GiantToadButtonVariant](../../src_ui_giant_toad_editor_controls/GiantToadButtonVariant.md)</span> <span class="parameter-name">variant</span> = <span class="default-value">GiantToadButtonVariant.secondary</span>, </span>
5.  <span id="param-icon" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">icon</span>, </span>
6.  <span id="param-key" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">key</span>, </span>

})

</div>

<div>

## Implementation

``` dart
const GiantToadButton({
  this.child,
  this.label,
  required this.onPressed,
  this.variant = GiantToadButtonVariant.secondary,
  this.icon,
  super.key,
}) : assert(child != null || label != null);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_editor_controls](../../src_ui_giant_toad_editor_controls/index.md)
3.  [GiantToadButton](../../src_ui_giant_toad_editor_controls/GiantToadButton-class.md)
4.  GiantToadButton.new const constructor

##### GiantToadButton class

<div>

</div>

</div>

<div>

</div>
