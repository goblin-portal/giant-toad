<div>

<div>

# <span class="kind-method">onHotReload</span> method

</div>

<div>

<div>

1.  @[mustCallSuper](https://pub.dev/documentation/meta/1.19.0/meta/mustCallSuper-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onHotReload</span>()

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Called when Flutter's hot reload is triggered.

Override this method to reload assets, recalculate cached values, or perform other actions in response to hot reload.

This is only called in debug mode.

</div>

<div>

## Implementation

``` dart
@mustCallSuper
void onHotReload() => handleHotReload();
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  onHotReload method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
