<div>

<div>

# <span class="kind-constructor">GiantToadDebugOverlay</span> constructor

</div>

<div>

<span class="name">GiantToadDebugOverlay</span>({

1.  <span id="param-diagnostics" class="parameter">required <span class="type-annotation">[GiantToadDiagnostics](../../giant_toad/GiantToadDiagnostics-class.md)</span> <span class="parameter-name">diagnostics</span>, </span>
2.  <span id="param-visible" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">visible</span> = <span class="default-value">false</span>, </span>
3.  <span id="param-textPaint" class="parameter"><span class="type-annotation">[TextPaint](https://pub.dev/documentation/flame/1.38.0/text/TextPaint-class.md)?</span> <span class="parameter-name">textPaint</span>, </span>
4.  <span id="param-lineHeight" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">lineHeight</span> = <span class="default-value">12</span>, </span>
5.  <span id="param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">position</span>, </span>
6.  <span id="param-priority" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">priority</span> = <span class="default-value">0x7ffffffe</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadDebugOverlay({
  required this.diagnostics,
  this.visible = false,
  TextPaint? textPaint,
  this.lineHeight = 12,
  super.position,
  super.priority = 0x7ffffffe,
}) : textPaint =
         textPaint ??
         TextPaint(
           style: const TextStyle(color: Color(0xffffffff), fontSize: 10),
         );
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadDebugOverlay](../../giant_toad/GiantToadDebugOverlay-class.md)
4.  GiantToadDebugOverlay.new constructor

##### GiantToadDebugOverlay class

<div>

</div>

</div>

<div>

</div>
