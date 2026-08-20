<div>

<div>

# <span class="kind-method">onMount</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">onMount</span>()

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Called when the component is added to its parent.

This method only runs when the component is fully loaded, i.e. after [onLoad](https://pub.dev/documentation/flame/1.38.0/components/Component/onLoad.md). However, [onLoad](https://pub.dev/documentation/flame/1.38.0/components/Component/onLoad.md) only ever runs once for the component, whereas [onMount](https://pub.dev/documentation/flame/1.38.0/components/Component/onMount.md) runs every time the component is inserted into the game tree.

This method runs when the component is about to be added to its parent. At this point the [parent](https://pub.dev/documentation/flame/1.38.0/components/Component/parent.md) property already holds a reference to this component's parent, however the parent doesn't have this component among its [children](https://pub.dev/documentation/flame/1.38.0/components/Component/children.md) yet.

After this method completes, the component is added to the parent's children set, and then the flag [isMounted](https://pub.dev/documentation/flame/1.38.0/components/Component/isMounted.md) set to true.

Example:

``` dart
@override
void onMount() {
  position = parent!.size / 2;
}
```

See also:

- [onRemove](https://pub.dev/documentation/flame/1.38.0/components/Component/onRemove.md) that is called every time the component is removed from the game tree

</div>

<div>

## Implementation

``` dart
void onMount() {}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  onMount method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
