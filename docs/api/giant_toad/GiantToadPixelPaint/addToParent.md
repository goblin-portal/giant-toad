<div>

<div>

# <span class="kind-method">addToParent</span> method

</div>

<div>

<span class="returntype">[FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">addToParent</span>(

1.  <span id="addToParent-param-parent" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">parent</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Adds this component as a child of `parent` (see [add](https://pub.dev/documentation/flame/1.38.0/components/Component/add.md) for details).

</div>

<div>

## Implementation

``` dart
FutureOr<void> addToParent(Component parent) => parent._addChild(this);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  addToParent method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
