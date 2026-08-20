<div>

<div>

# <span class="kind-method">onPush</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onPush</span>(

1.  <span id="onPush-param-previousRoute" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">previousRoute</span></span>

)

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
2.  [giant_toad_scenes](../../src_scenes_giant_toad_scenes/index.md)
3.  [GiantToadSceneRoute](../../src_scenes_giant_toad_scenes/GiantToadSceneRoute-class.md)
4.  onPush method

##### GiantToadSceneRoute class

<div>

</div>

</div>

<div>

</div>
