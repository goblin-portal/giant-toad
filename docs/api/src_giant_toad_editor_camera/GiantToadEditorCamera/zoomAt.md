<div>

<div>

# <span class="kind-method">zoomAt</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">zoomAt</span>({

1.  <span id="zoomAt-param-canvasPosition" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">canvasPosition</span>, </span>
2.  <span id="zoomAt-param-scaleFactor" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">scaleFactor</span>, </span>
3.  <span id="zoomAt-param-minZoom" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">minZoom</span> = <span class="default-value">0.5</span>, </span>
4.  <span id="zoomAt-param-maxZoom" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">maxZoom</span> = <span class="default-value">4</span>, </span>

})

</div>

<div>

Zooms around a physical canvas anchor while retaining the world point beneath that anchor.

</div>

<div>

## Implementation

``` dart
void zoomAt({
  required Vector2 canvasPosition,
  required double scaleFactor,
  double minZoom = 0.5,
  double maxZoom = 4,
}) {
  final before = camera.globalToLocal(canvasPosition);
  final nextZoom = (camera.viewfinder.zoom * scaleFactor).clamp(
    minZoom,
    maxZoom,
  );
  camera.viewfinder.zoom = nextZoom;
  final after = camera.globalToLocal(canvasPosition);
  camera.viewfinder.position += before - after;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_editor_camera](../../src_giant_toad_editor_camera/index.md)
3.  [GiantToadEditorCamera](../../src_giant_toad_editor_camera/GiantToadEditorCamera-class.md)
4.  zoomAt method

##### GiantToadEditorCamera class

<div>

</div>

</div>

<div>

</div>
