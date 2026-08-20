<div>

<div>

# <span class="kind-property">children</span> property

</div>

<div>

<div>

<span class="returntype">[ReadOnlyOrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/read_only_ordered_set/ReadOnlyOrderedSet-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> get <span class="name">children</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

The children components of this component.

This getter will automatically create the [OrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/ordered_set/OrderedSet-class.md) container within the current object if it didn't exist before. Check the [hasChildren](https://pub.dev/documentation/flame/1.38.0/components/Component/hasChildren.md) property in order to avoid instantiating the children container.

</div>

<div>

## Implementation

``` dart
ReadOnlyOrderedSet<Component> get children =>
    _children ??= createComponentSet();
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  children property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
