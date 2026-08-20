<div>

<div>

# <span class="kind-method">onRemove</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onRemove</span>()

<div>

<span class="feature">override</span>

</div>

</div>

<div>

Called right before the component is removed from its parent and also before it changes parents (and is thus temporarily removed from the component tree).

This method will only run for a component that was previously mounted into a component tree. If a component was never mounted (for example, when it is removed before it had a chance to mount), then this callback will not trigger. Thus, [onRemove](../../giant_toad/GiantToadSceneRoute/onRemove.md) runs if and only if there was a corresponding [onMount](https://pub.dev/documentation/flame/1.38.0/components/ParentIsA/onMount.md) call before.

</div>

<div>

## Implementation

``` dart
@override
void onRemove() {
  unawaited(resources.dispose());
  super.onRemove();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadSceneRoute](../../giant_toad/GiantToadSceneRoute-class.md)
4.  onRemove method

##### GiantToadSceneRoute class

<div>

</div>

</div>

<div>

</div>
