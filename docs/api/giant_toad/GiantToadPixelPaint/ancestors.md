<div>

<div>

# <span class="kind-method">ancestors</span> method

</div>

<div>

<span class="returntype">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="name">ancestors</span>({

1.  <span id="ancestors-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span>, </span>

})

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

An iterator producing this component's parent, then its parent's parent, then the great-grand-parent, and so on, until it reaches a component without a parent.

</div>

<div>

## Implementation

``` dart
Iterable<Component> ancestors({bool includeSelf = false}) sync* {
  var current = includeSelf ? this : parent;
  while (current != null) {
    yield current;
    current = current.parent;
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
4.  ancestors method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
