<div>

<div>

# <span class="kind-method">onPop</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onPop</span>(

1.  <span id="onPop-param-nextRoute" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">nextRoute</span></span>

)

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
2.  [giant_toad_scenes](../../src_scenes_giant_toad_scenes/index.md)
3.  [GiantToadSceneRoute](../../src_scenes_giant_toad_scenes/GiantToadSceneRoute-class.md)
4.  onPop method

##### GiantToadSceneRoute class

<div>

</div>

</div>

<div>

</div>
