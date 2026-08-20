<div>

<div>

# <span class="kind-method">onPop</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onPop</span>(

1.  <span id="onPop-param-nextRoute" class="parameter"><span class="type-annotation">[Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md)</span> <span class="parameter-name">nextRoute</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

This method is called when the route is popped off the top of the [RouterComponent](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent-class.md)'s stack.

The argument for this method is the route that will become the next top-most route on the stack. Thus, the argument in [onPop](../../giant_toad/GiantToadSceneRoute/onPop.md) will always be the same as was given previously in [onPush](../../giant_toad/GiantToadSceneRoute/onPush.md).

</div>

<div>

## Implementation

``` dart
@override
void onPop(Route nextRoute) {
  onDeactivated?.call(nextRoute.name ?? '');
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
4.  onPop method

##### GiantToadSceneRoute class

<div>

</div>

</div>

<div>

</div>
