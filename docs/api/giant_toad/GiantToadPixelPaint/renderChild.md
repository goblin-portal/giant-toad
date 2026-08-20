<div>

<div>

# <span class="kind-method">renderChild</span> method

</div>

<div>

<div>

1.  @[protected](https://pub.dev/documentation/meta/1.19.0/meta/protected-constant.md)

</div>

<span class="returntype">void</span> <span class="name">renderChild</span>(

1.  <span id="renderChild-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span>, </span>
2.  <span id="renderChild-param-child" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">child</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Renders a single `child` component onto `canvas`.

Override this method (instead of [renderTree](https://pub.dev/documentation/flame/1.38.0/components/Component/renderTree.md)) when you need to intercept per-child rendering — for example, to accumulate draw calls for batching. The default implementation propagates the parent's render contexts into the child before delegating to the child's [Component.renderTree](https://pub.dev/documentation/flame/1.38.0/components/Component/renderTree.md), and cleans them up afterwards.

</div>

<div>

## Implementation

``` dart
@protected
void renderChild(Canvas canvas, Component child) {
  int? originalLength;
  final hasContext = _renderContexts.isNotEmpty;
  if (hasContext) {
    originalLength = child._renderContexts.length;
    child._renderContexts.addAll(_renderContexts);
  }
  child.renderTree(canvas);
  if (hasContext) {
    child._renderContexts.removeRange(
      originalLength!,
      child._renderContexts.length,
    );
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
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  renderChild method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
