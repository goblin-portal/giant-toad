<div>

<div>

# <span class="kind-method">commit</span> method

</div>

<div>

<span class="returntype">[GiantToadMapEdit](../../src_tilemap_giant_toad_map_edit/GiantToadMapEdit-class.md)?</span> <span class="name">commit</span>()

</div>

<div>

Returns the pending edit, or `null` when no cells changed.

</div>

<div>

## Implementation

``` dart
GiantToadMapEdit? commit() {
  return _changes.isEmpty ? null : GiantToadMapEdit(_changes.values);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_edit](../../src_tilemap_giant_toad_map_edit/index.md)
3.  [GiantToadMapEditTransaction](../../src_tilemap_giant_toad_map_edit/GiantToadMapEditTransaction-class.md)
4.  commit method

##### GiantToadMapEditTransaction class

<div>

</div>

</div>

<div>

</div>
