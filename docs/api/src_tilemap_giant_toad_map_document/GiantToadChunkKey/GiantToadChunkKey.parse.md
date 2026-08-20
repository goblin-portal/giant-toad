<div>

<div>

# <span class="kind-constructor">GiantToadChunkKey.parse</span> constructor

</div>

<div>

<span class="name">GiantToadChunkKey.parse</span>(

1.  <span id="parse-param-value" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">value</span></span>

)

</div>

<div>

## Implementation

``` dart
factory GiantToadChunkKey.parse(String value) {
  final parts = value.split(',');
  if (parts.length != 2) {
    throw FormatException('Invalid chunk key: $value');
  }
  final x = int.tryParse(parts[0]);
  final y = int.tryParse(parts[1]);
  if (x == null || y == null) {
    throw FormatException('Invalid chunk key: $value');
  }
  return GiantToadChunkKey(x, y);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_document](../../src_tilemap_giant_toad_map_document/index.md)
3.  [GiantToadChunkKey](../../src_tilemap_giant_toad_map_document/GiantToadChunkKey-class.md)
4.  GiantToadChunkKey.parse factory constructor

##### GiantToadChunkKey class

<div>

</div>

</div>

<div>

</div>
