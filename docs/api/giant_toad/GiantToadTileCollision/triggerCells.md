<div>

<div>

# <span class="kind-method">triggerCells</span> method

</div>

<div>

<span class="returntype">[Set](https://api.flutter.dev/flutter/dart-core/Set-class.md)<span class="signature">\<<span class="type-parameter">[Point](https://api.flutter.dev/flutter/dart-math/Point-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>\></span></span>\></span></span> <span class="name">triggerCells</span>(

1.  <span id="triggerCells-param-bounds" class="parameter"><span class="type-annotation">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> <span class="parameter-name">bounds</span></span>

)

</div>

<div>

Trigger cells touched by `bounds`, suitable for enter/exit state tracking.

</div>

<div>

## Implementation

``` dart
Set<math.Point<int>> triggerCells(Rect bounds) {
  final tileSize = document.tileSize;
  final result = <math.Point<int>>{};
  final minX = (bounds.left / tileSize).floor();
  final minY = (bounds.top / tileSize).floor();
  final maxX = ((bounds.right - 1e-9) / tileSize).floor();
  final maxY = ((bounds.bottom - 1e-9) / tileSize).floor();
  for (var y = minY; y <= maxY; y++) {
    for (var x = minX; x <= maxX; x++) {
      if (materialAt(x, y) == GiantToadTileMaterial.trigger) {
        result.add(math.Point(x, y));
      }
    }
  }
  return result;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadTileCollision](../../giant_toad/GiantToadTileCollision-class.md)
4.  triggerCells method

##### GiantToadTileCollision class

<div>

</div>

</div>

<div>

</div>
