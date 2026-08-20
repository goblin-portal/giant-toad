<div>

<div>

# <span class="kind-method">add</span> method

</div>

<div>

<span class="returntype">[FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">add</span>(

1.  <span id="add-param-component" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">component</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Schedules `component` to be added as a child to this component.

This method is robust towards being called from any place in the user code: you can call it while iterating over the component tree, during mounting or async loading, when the Game object is already loaded or not.

The cost of this flexibility is that the component won't be added right away. Instead, it will be placed into a queue, and then added later, after it has finished loading, but no sooner than on the next game tick. You can await `FlameGame.lifecycleEventsProcessed` like so:

``` dart
world.add(coin);
await game.lifecycleEventsProcessed;
// The coin is now guaranteed to be added.
```

When multiple children are scheduled to be added to the same parent, we start loading all of them as soon as possible. Nevertheless, the children will end up being added to the parent in exactly the same order as they were originally scheduled by the user, regardless of how fast or slow each of them loads.

A component can be added to a parent which may not be mounted to the game tree yet. In such case, the component will start loading immediately, but its mounting will be delayed until such time when the parent becomes mounted.

This method returns a future that completes when the component is done loading, and mounting if the parent is currently mounted. However, this future will not guarantee that the component will become "fully mounted": it still needs to be added to the parent's children list, and that operation will only be done on the next game tick.

A component can only be added to one parent at a time. It is an error to try to add it to multiple parents, or even to the same parent multiple times. If you need to change the parent of a component, use the [parent](https://pub.dev/documentation/flame/1.38.0/components/Component/parent.md) setter.

</div>

<div>

## Implementation

``` dart
FutureOr<void> add(Component component) => _addChild(component);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  add method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
