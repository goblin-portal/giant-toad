<div>

<div>

# <span class="kind-method">applyEdit</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">applyEdit</span>(

1.  <span id="applyEdit-param-edit" class="parameter"><span class="type-annotation">[GiantToadMapEdit](../../src_tilemap_giant_toad_map_edit/GiantToadMapEdit-class.md)</span> <span class="parameter-name">edit</span></span>

)

</div>

<div>

Applies a reversible map edit and invalidates only its affected chunks.

</div>

<div>

## Implementation

``` dart
void applyEdit(GiantToadMapEdit edit) {
  final changedChunks = edit.affectedChunks(document.chunkSize);
  replaceDocument(edit.apply(document), changedChunks: changedChunks);
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
4.  applyEdit method

##### GiantToadTilemapComponent class

<div>

</div>

</div>

<div>

</div>
