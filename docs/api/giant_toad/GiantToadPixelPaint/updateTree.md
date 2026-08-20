<div>

<div>

# <span class="kind-method">updateTree</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">updateTree</span>(

1.  <span id="updateTree-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

This method traverses the component tree and calls [update](https://pub.dev/documentation/flame/1.38.0/components/Component/update.md) on all its children according to their [priority](https://pub.dev/documentation/flame/1.38.0/components/Component/priority.md) order, relative to the priority of the direct siblings, not the children or the ancestors.

</div>

<div>

## Implementation

``` dart
void updateTree(double dt) {
  update(dt);
  final children = _children;
  if (children != null) {
    for (final child in children) {
      child.updateTree(dt);
    }
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
4.  updateTree method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
