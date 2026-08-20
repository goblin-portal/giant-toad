<div>

<div>

# <span class="kind-method">propagateToChildren\<<span class="type-parameter">T extends Component</span>\></span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">propagateToChildren</span>\<<span class="type-parameter">T extends Component</span>\>(

1.  <span id="propagateToChildren-param-handler" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">handler</span>(</span>
    1.  <span id="param-" class="parameter"><span class="type-annotation">T</span></span>

    ), {
2.  <span id="propagateToChildren-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span>, </span>

})

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

This method first calls the passed handler on the leaves in the tree, the children without any children of their own. Then it continues through all other children. The propagation continues until the handler returns false, which means "do not continue", or when the handler has been called with all children.

This method is important to be used by the engine to propagate actions like rendering, taps, etc, but you can call it yourself if you need to apply an action to the whole component chain. It will only consider components of type T in the hierarchy, so use T = Component to target everything.

</div>

<div>

## Implementation

``` dart
bool propagateToChildren<T extends Component>(
  bool Function(T) handler, {
  bool includeSelf = false,
}) {
  return descendants(
    reversed: true,
    includeSelf: includeSelf,
  ).whereType<T>().every(handler);
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
4.  propagateToChildren\<<span class="type-parameter">T extends Component</span>\> method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
