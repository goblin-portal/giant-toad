<div>

<div>

# <span class="kind-method">tileAt</span> method

</div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="name">tileAt</span>(

1.  <span id="tileAt-param-elapsed" class="parameter"><span class="type-annotation">[Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.md)</span> <span class="parameter-name">elapsed</span></span>

)

</div>

<div>

## Implementation

``` dart
int tileAt(Duration elapsed) {
  var cursor = elapsed.inMicroseconds % totalDuration.inMicroseconds;
  for (final frame in frames) {
    if (cursor < frame.duration.inMicroseconds) return frame.tileId;
    cursor -= frame.duration.inMicroseconds;
  }
  return frames.last.tileId;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_runtime](../../src_tilemap_giant_toad_map_runtime/index.md)
3.  [GiantToadTileAnimation](../../src_tilemap_giant_toad_map_runtime/GiantToadTileAnimation-class.md)
4.  tileAt method

##### GiantToadTileAnimation class

<div>

</div>

</div>

<div>

</div>
