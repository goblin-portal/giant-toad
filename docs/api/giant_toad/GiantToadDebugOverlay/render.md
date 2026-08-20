<div>

<div>

# <span class="kind-method">render</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">render</span>(

1.  <span id="render-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>

)

<div>

<span class="feature">override</span>

</div>

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
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadDebugOverlay](../../giant_toad/GiantToadDebugOverlay-class.md)
4.  render method

##### GiantToadDebugOverlay class

<div>

</div>

</div>

<div>

</div>
