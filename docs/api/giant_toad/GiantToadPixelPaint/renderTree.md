<div>

<div>

# <span class="kind-method">renderTree</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">renderTree</span>(

1.  <span id="renderTree-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Implementation

``` dart
void renderTree(Canvas canvas) {
  final context = renderContext;
  if (context != null) {
    _renderContexts.add(context);
  }

  render(canvas);
  final children = _children;
  if (children != null) {
    for (final child in children) {
      renderChild(canvas, child);
    }
    afterChildrenRendered(canvas);
  }

  // Any debug rendering should be rendered on top of everything
  if (debugMode) {
    renderDebugMode(canvas);
  }

  if (context != null) {
    _renderContexts.removeLast();
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
4.  renderTree method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
