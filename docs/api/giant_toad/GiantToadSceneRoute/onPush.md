<div>

<div>

# <span class="kind-method">onPush</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onPush</span>(

1.  <span id="onPush-param-previousRoute" class="parameter"><span class="type-annotation">[Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md)?</span> <span class="parameter-name">previousRoute</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

This method is invoked when the route is pushed on top of the [RouterComponent](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent-class.md)'s stack.

The argument for this method is the route that was on top of the stack before the push. It can be null if the current route becomes the first element of the navigation stack.

</div>

<div>

## Implementation

``` dart
@override
void onPush(Route? previousRoute) {
  onActivated?.call(previousRoute?.name);
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
4.  onPush method

##### GiantToadSceneRoute class

<div>

</div>

</div>

<div>

</div>
