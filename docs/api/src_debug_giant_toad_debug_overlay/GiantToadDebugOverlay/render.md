<div>

<div>

# <span class="kind-method">render</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">render</span>(

1.  <span id="render-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
void render(Canvas canvas) {
  if (!visible) return;
  var y = 0.0;
  for (final entry in diagnostics.snapshot().entries) {
    textPaint.render(canvas, '${entry.key}: ${entry.value}', Vector2(0, y));
    y += lineHeight;
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_debug_overlay](../../src_debug_giant_toad_debug_overlay/index.md)
3.  [GiantToadDebugOverlay](../../src_debug_giant_toad_debug_overlay/GiantToadDebugOverlay-class.md)
4.  render method

##### GiantToadDebugOverlay class

<div>

</div>

</div>

<div>

</div>
