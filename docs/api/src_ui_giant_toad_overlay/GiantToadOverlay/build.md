<div>

<div>

# <span class="kind-method">build</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">dynamic</span> <span class="name">build</span>(

1.  <span id="build-param-context" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">context</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
Widget build(BuildContext context) {
  return Positioned(
    left: metrics.offset.x,
    top: metrics.offset.y,
    width: metrics.size.x,
    height: metrics.size.y,
    child: ClipRect(
      child: Transform.scale(
        alignment: Alignment.topLeft,
        scale: metrics.scale,
        child: SizedBox(
          width: resolution.width,
          height: resolution.height,
          child: child,
        ),
      ),
    ),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_overlay](../../src_ui_giant_toad_overlay/index.md)
3.  [GiantToadOverlay](../../src_ui_giant_toad_overlay/GiantToadOverlay-class.md)
4.  build method

##### GiantToadOverlay class

<div>

</div>

</div>

<div>

</div>
