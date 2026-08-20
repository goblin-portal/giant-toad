<div>

<div>

# <span class="kind-method">render</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">render</span>(

1.  <span id="render-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
void render(Canvas canvas) {
  final clipBounds = canvas.getLocalClipBounds();
  final tileSize = document.tileSize;
  final minX = (clipBounds.left / tileSize).floor();
  final minY = (clipBounds.top / tileSize).floor();
  final maxX = (clipBounds.right / tileSize).ceil() - 1;
  final maxY = (clipBounds.bottom / tileSize).ceil() - 1;
  renderMetrics.reset();

  for (final layer in document.layers) {
    if (layer.additionalFields['visible'] == false) continue;
    final opacity = switch (layer.additionalFields['opacity']) {
      final num value => value.clamp(0, 1).toDouble(),
      _ => 1.0,
    };
    if (opacity == 0) continue;
    if (opacity < 1) {
      if (!layer.hasCellInBounds(
        chunkSize: document.chunkSize,
        minX: minX,
        minY: minY,
        maxX: maxX,
        maxY: maxY,
      )) {
        continue;
      }
      final alpha = (opacity * 255).round();
      final paint = _opacityPaints.putIfAbsent(
        alpha,
        () => Paint()..color = Color.fromARGB(alpha, 255, 255, 255),
      );
      canvas.saveLayer(clipBounds, paint);
    }
    if (cacheChunks) {
      _renderCachedLayer(
        canvas,
        layer,
        minX: minX,
        minY: minY,
        maxX: maxX,
        maxY: maxY,
      );
    } else {
      layer.forEachCellInBounds(
        chunkSize: document.chunkSize,
        minX: minX,
        minY: minY,
        maxX: maxX,
        maxY: maxY,
        visit: (cell, tileX, tileY) {
          renderMetrics.cellsRendered++;
          tileRenderer(canvas, cell, tileX, tileY, tileSize);
        },
      );
    }
    if (opacity < 1) canvas.restore();
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_tilemap_component](../../src_tilemap_giant_toad_tilemap_component/index.md)
3.  [GiantToadTilemapComponent](../../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent-class.md)
4.  render method

##### GiantToadTilemapComponent class

<div>

</div>

</div>

<div>

</div>
