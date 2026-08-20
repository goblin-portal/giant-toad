<div>

<div>

# <span class="kind-property">tilesets</span> property

</div>

<div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadTileset](../../src_tilemap_giant_toad_map_runtime/GiantToadTileset-class.md)</span>\></span></span> get <span class="name">tilesets</span>

</div>

<div>

## Implementation

``` dart
List<GiantToadTileset> get tilesets {
  final value = additionalFields['tilesets'];
  if (value == null) return const [];
  if (value is! List || value.any((entry) => entry is! Map)) {
    throw const FormatException('Map tilesets must be an object array.');
  }
  return value
      .map(
        (entry) => GiantToadTileset.fromJson(
          Map<String, Object?>.from(entry as Map),
        ),
      )
      .toList(growable: false);
}
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_runtime](../../src_tilemap_giant_toad_map_runtime/index.md)
3.  [GiantToadMapRuntimeDocument](../../src_tilemap_giant_toad_map_runtime/GiantToadMapRuntimeDocument.md)
4.  tilesets property

##### GiantToadMapRuntimeDocument extension on [GiantToadMapDocument](../../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)

<div>

</div>

</div>

<div>

</div>
