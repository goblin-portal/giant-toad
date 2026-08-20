<div>

<div>

# <span class="kind-method">panBy</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">panBy</span>(

1.  <span id="panBy-param-canvasDelta" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">canvasDelta</span></span>

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
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadEditorCamera](../../giant_toad/GiantToadEditorCamera-class.md)
4.  panBy method

##### GiantToadEditorCamera class

<div>

</div>

</div>

<div>

</div>
