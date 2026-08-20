<div>

<div>

# <span class="kind-constructor">GiantToadTileset.fromJson</span> constructor

</div>

<div>

<span class="name">GiantToadTileset.fromJson</span>(

1.  <span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>

)

</div>

<div>

## Implementation

``` dart
factory GiantToadTileset.fromJson(Map<String, Object?> json) {
  final reader = GiantToadJsonReader(json, context: 'Tileset');
  return GiantToadTileset(
    id: reader.string('id'),
    image: reader.string('image', safePath: true),
    firstTileId: reader.integer('firstTileId', allowZero: true),
    columns: reader.integer('columns'),
    tileCount: reader.integer('tileCount'),
    tileWidth: reader.integer('tileWidth'),
    tileHeight: reader.integer('tileHeight'),
    margin: reader.integer('margin', fallback: 0, allowZero: true),
    spacing: reader.integer('spacing', fallback: 0, allowZero: true),
    animations: _decodeTileAnimations(json['animations']),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadTileset](../../giant_toad/GiantToadTileset-class.md)
4.  GiantToadTileset.fromJson factory constructor

##### GiantToadTileset class

<div>

</div>

</div>

<div>

</div>
