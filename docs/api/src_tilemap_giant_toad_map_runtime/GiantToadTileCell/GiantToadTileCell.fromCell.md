<div>

<div>

# <span class="kind-constructor">GiantToadTileCell.fromCell</span> constructor

</div>

<div>

<span class="name">GiantToadTileCell.fromCell</span>(

1.  <span id="fromCell-param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span></span>

)

</div>

<div>

## Implementation

``` dart
factory GiantToadTileCell.fromCell(GiantToadMapCell cell) {
  if (cell is int) return GiantToadTileCell(tileId: cell);
  if (cell is! Map) {
    throw const FormatException('Tile cell must be an integer or object.');
  }
  final json = Map<String, Object?>.from(cell);
  final tileId = json['tileId'];
  final region = json['region'];
  final mask = json['mask'];
  if (tileId is! int || tileId < 0) {
    throw const FormatException(
      'Rich tile cell requires a non-negative tileId.',
    );
  }
  if (region != null && region is! String) {
    throw const FormatException('Tile region must be a string.');
  }
  if (mask != null && mask is! int) {
    throw const FormatException('Tile mask must be an integer.');
  }
  return GiantToadTileCell(
    tileId: tileId,
    region: region as String?,
    mask: mask as int?,
    properties: Map.unmodifiable(
      json
        ..remove('tileId')
        ..remove('region')
        ..remove('mask'),
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
2.  [giant_toad_map_runtime](../../src_tilemap_giant_toad_map_runtime/index.md)
3.  [GiantToadTileCell](../../src_tilemap_giant_toad_map_runtime/GiantToadTileCell-class.md)
4.  GiantToadTileCell.fromCell factory constructor

##### GiantToadTileCell class

<div>

</div>

</div>

<div>

</div>
