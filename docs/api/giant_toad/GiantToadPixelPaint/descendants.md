<div>

<div>

# <span class="kind-method">descendants</span> method

</div>

<div>

<span class="returntype">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="name">descendants</span>({

1.  <span id="descendants-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span>, </span>
2.  <span id="descendants-param-reversed" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">reversed</span> = <span class="default-value">false</span>, </span>

})

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Recursively enumerates all nested [children](https://pub.dev/documentation/flame/1.38.0/components/Component/children.md).

The search is depth-first in preorder. In other words, it explores the first child completely before visiting the next sibling, and the root component is visited before its children.

This ordering of descendants is considered standard in Flame: it is the same order in which the components will normally be updated and rendered on every game cycle. The optional parameter `reversed` allows iterating through the same set of descendants in reverse order.

The [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md) produced by this method is "lazy", which means it will only traverse the component tree when required. This allows efficient chaining of various iterable methods, such as filtering, early stopping, folding, and so on -- see the documentation of the [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md) class for details.

</div>

<div>

## Implementation

``` dart
Iterable<Component> descendants({
  bool includeSelf = false,
  bool reversed = false,
}) sync* {
  if (includeSelf && !reversed) {
    yield this;
  }
  if (hasChildren) {
    final childrenIterable = reversed ? children.reversed() : children;
    for (final child in childrenIterable) {
      yield* child.descendants(includeSelf: true, reversed: reversed);
    }
  }
  if (includeSelf && reversed) {
    yield this;
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
4.  descendants method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
