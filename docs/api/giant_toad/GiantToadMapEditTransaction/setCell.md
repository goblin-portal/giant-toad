<div>

<div>

# <span class="kind-method">setCell</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">setCell</span>({

1.  <span id="setCell-param-layerId" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">layerId</span>, </span>
2.  <span id="setCell-param-x" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
3.  <span id="setCell-param-y" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span>, </span>
4.  <span id="setCell-param-value" class="parameter">required <span class="type-annotation">[GiantToadMapCell](../../giant_toad/GiantToadMapCell.md)?</span> <span class="parameter-name">value</span>, </span>

})

</div>

<div>

Records the final value at a cell. Repeated calls for the same cell keep the pre-stroke value and replace only the final value.

</div>

<div>

## Implementation

``` dart
void setCell({
  required String layerId,
  required int x,
  required int y,
  required GiantToadMapCell value,
}) {
  final key = _CellKey(layerId, x, y);
  final existing = _changes[key];
  final before = existing?.before ?? _cellAt(document, key);
  if (before == value && existing == null) {
    return;
  }
  if (before == value) {
    _changes.remove(key);
    return;
  }
  _changes[key] = GiantToadMapCellChange(
    layerId: layerId,
    x: x,
    y: y,
    before: before,
    after: value,
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
3.  [GiantToadMapEditTransaction](../../giant_toad/GiantToadMapEditTransaction-class.md)
4.  setCell method

##### GiantToadMapEditTransaction class

<div>

</div>

</div>

<div>

</div>
