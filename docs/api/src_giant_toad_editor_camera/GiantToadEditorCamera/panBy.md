<div>

<div>

# <span class="kind-method">panBy</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">panBy</span>(

1.  <span id="panBy-param-canvasDelta" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvasDelta</span></span>

)

</div>

<div>

Pans the world by a physical canvas delta, accounting for camera zoom.

</div>

<div>

## Implementation

``` dart
void panBy(Vector2 canvasDelta) {
  camera.viewfinder.position -= canvasDelta / camera.viewfinder.zoom;
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
4.  panBy method

##### GiantToadEditorCamera class

<div>

</div>

</div>

<div>

</div>
