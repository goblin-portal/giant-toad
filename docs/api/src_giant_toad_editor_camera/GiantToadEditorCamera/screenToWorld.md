<div>

<div>

# <span class="kind-method">screenToWorld</span> method

</div>

<div>

<span class="returntype">dynamic</span> <span class="name">screenToWorld</span>({

1.  <span id="screenToWorld-param-canvasPosition" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">canvasPosition</span>, </span>
2.  <span id="screenToWorld-param-viewport" class="parameter">required <span class="type-annotation">[GiantToadPixelViewport](../../src_giant_toad_pixel_viewport/GiantToadPixelViewport-class.md)</span> <span class="parameter-name">viewport</span>, </span>
3.  <span id="screenToWorld-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span>, </span>

})

</div>

<div>

Converts a physical canvas point into world coordinates, or returns null when the point falls in the pixel viewport's letterbox.

</div>

<div>

## Implementation

``` dart
Vector2? screenToWorld({
  required Vector2 canvasPosition,
  required GiantToadPixelViewport viewport,
  Vector2? output,
}) {
  final logical = viewport.globalToLocal(canvasPosition);
  if (logical.x < 0 ||
      logical.y < 0 ||
      logical.x > viewport.resolution.width ||
      logical.y > viewport.resolution.height) {
    return null;
  }
  return camera.globalToLocal(canvasPosition, output: output);
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
4.  screenToWorld method

##### GiantToadEditorCamera class

<div>

</div>

</div>

<div>

</div>
