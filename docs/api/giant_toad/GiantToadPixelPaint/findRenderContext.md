<div>

<div>

# <span class="kind-method">findRenderContext\<<span class="type-parameter">T extends ComponentRenderContext</span>\></span> method

</div>

<div>

<span class="returntype">T?</span> <span class="name">findRenderContext</span>\<<span class="type-parameter">T extends ComponentRenderContext</span>\>()

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Implementation

``` dart
T? findRenderContext<T extends ComponentRenderContext>() {
  return _renderContexts.whereType<T>().lastOrNull;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  findRenderContext\<<span class="type-parameter">T extends ComponentRenderContext</span>\> method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
