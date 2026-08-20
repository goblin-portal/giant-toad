<div>

<div>

# <span class="kind-property">parent</span> property

</div>

<div>

<div>

<span class="returntype">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)?</span> get <span class="name">parent</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Who owns this component in the component tree.

This can be null if the component hasn't been added to the component tree yet, or if it is the root of component tree.

Setting this property to `null` is equivalent to [removeFromParent](https://pub.dev/documentation/flame/1.38.0/components/Component/removeFromParent.md). Setting it to a new parent component is equivalent to calling [addToParent](https://pub.dev/documentation/flame/1.38.0/components/Component/addToParent.md) and will properly remove this component from its current parent, if any.

Note that the [parent](https://pub.dev/documentation/flame/1.38.0/components/Component/parent.md) setter, like [add](https://pub.dev/documentation/flame/1.38.0/components/Component/add.md) and similar methods, merely enqueues the move from one parent to another. For example:

``` dart
coin.parent = inventory;
// The inventory.children set does not include coin yet.
await game.lifecycleEventsProcessed;
// The inventory.children set now includes coin.
```

</div>

<div>

## Implementation

``` dart
Component? get parent => _parent;
```

</div>

</div>

<div>

<div>

set <span class="name">parent</span> <span class="signature">(<span id="parent=-param-newParent" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)?</span> <span class="parameter-name">newParent</span></span>)</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Implementation

``` dart
set parent(Component? newParent) {
  if (newParent == null) {
    removeFromParent();
  } else {
    addToParent(newParent);
  }
}
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
4.  parent property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
