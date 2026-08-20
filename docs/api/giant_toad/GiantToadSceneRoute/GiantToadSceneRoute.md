<div>

<div>

# <span class="kind-constructor">GiantToadSceneRoute</span> constructor

</div>

<div>

<span class="name">GiantToadSceneRoute</span>({

1.  <span id="param-builder" class="parameter">required <span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">builder</span>(), </span>
2.  <span id="param-onActivated" class="parameter"><span class="type-annotation">void</span> <span class="parameter-name">onActivated</span>(</span>
    1.  <span id="param-previous" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">previous</span></span>

    )?,
3.  <span id="param-onDeactivated" class="parameter"><span class="type-annotation">void</span> <span class="parameter-name">onDeactivated</span>(</span>
    1.  <span id="param-next" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">next</span></span>

    )?,
4.  <span id="param-transparent" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">transparent</span> = <span class="default-value">false</span>, </span>
5.  <span id="param-maintainState" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">maintainState</span> = <span class="default-value">true</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadSceneRoute({
  required Component Function() builder,
  this.onActivated,
  this.onDeactivated,
  bool transparent = false,
  bool maintainState = true,
}) : resources = GiantToadSceneResources(),
     super(builder, transparent: transparent, maintainState: maintainState);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadSceneRoute](../../giant_toad/GiantToadSceneRoute-class.md)
4.  GiantToadSceneRoute.new constructor

##### GiantToadSceneRoute class

<div>

</div>

</div>

<div>

</div>
