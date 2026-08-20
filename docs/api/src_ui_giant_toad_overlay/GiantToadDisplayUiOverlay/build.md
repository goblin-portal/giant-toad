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
Widget build(BuildContext context) => LayoutBuilder(
  builder: (context, constraints) {
    final metrics = _overlayMetrics(
      constraints: constraints,
      resolution: resolution,
      mode: mode,
      pixelScale: pixelScale,
    );
    return Stack(
      children: [
        Positioned(
          left: metrics.offset.x,
          top: metrics.offset.y,
          width: metrics.size.x,
          height: metrics.size.y,
          child: ClipRect(
            child: builder(
              context,
              metrics.scale,
              Size(
                metrics.size.x / metrics.scale,
                metrics.size.y / metrics.scale,
              ),
            ),
          ),
        ),
      ],
    );
  },
);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_overlay](../../src_ui_giant_toad_overlay/index.md)
3.  [GiantToadDisplayUiOverlay](../../src_ui_giant_toad_overlay/GiantToadDisplayUiOverlay-class.md)
4.  build method

##### GiantToadDisplayUiOverlay class

<div>

</div>

</div>

<div>

</div>
