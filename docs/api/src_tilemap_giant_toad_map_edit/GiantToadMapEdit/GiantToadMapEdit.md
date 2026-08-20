<div>

<div>

# <span class="kind-constructor">GiantToadMapEdit</span> constructor

</div>

<div>

<span class="name">GiantToadMapEdit</span>(

1.  <span id="param-changes" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapCellChange](../../src_tilemap_giant_toad_map_edit/GiantToadMapCellChange-class.md)</span>\></span></span> <span class="parameter-name">changes</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadMapEdit(Iterable<GiantToadMapCellChange> changes)
  : changes = List.unmodifiable(changes) {
  if (this.changes.isEmpty) {
    throw ArgumentError.value(changes, 'changes', 'must not be empty');
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_edit](../../src_tilemap_giant_toad_map_edit/index.md)
3.  [GiantToadMapEdit](../../src_tilemap_giant_toad_map_edit/GiantToadMapEdit-class.md)
4.  GiantToadMapEdit.new constructor

##### GiantToadMapEdit class

<div>

</div>

</div>

<div>

</div>
