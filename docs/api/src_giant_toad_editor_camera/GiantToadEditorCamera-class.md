<div>

<div>

# <span class="kind-class">GiantToadEditorCamera</span> class

</div>

<div>

Editor-safe camera pan, zoom, and coordinate conversion helpers.

</div>

<div>

## Constructors

<span class="name">[GiantToadEditorCamera](../src_giant_toad_editor_camera/GiantToadEditorCamera/GiantToadEditorCamera.md)</span><span class="signature">(<span id="param-camera" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">camera</span></span>)</span>  

</div>

<div>

## Properties

<span class="name">[camera](../src_giant_toad_editor_camera/GiantToadEditorCamera/camera.md)</span> <span class="signature">→ dynamic</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[panBy](../src_giant_toad_editor_camera/GiantToadEditorCamera/panBy.md)</span><span class="signature">(<span id="panBy-param-canvasDelta" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvasDelta</span></span>) <span class="returntype parameter">→ void</span> </span>  
Pans the world by a physical canvas delta, accounting for camera zoom.

<span class="name">[screenToWorld](../src_giant_toad_editor_camera/GiantToadEditorCamera/screenToWorld.md)</span><span class="signature">({<span id="screenToWorld-param-canvasPosition" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">canvasPosition</span>, </span><span id="screenToWorld-param-viewport" class="parameter">required <span class="type-annotation">[GiantToadPixelViewport](../src_giant_toad_pixel_viewport/GiantToadPixelViewport-class.md)</span> <span class="parameter-name">viewport</span>, </span><span id="screenToWorld-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ dynamic</span> </span>  
Converts a physical canvas point into world coordinates, or returns null when the point falls in the pixel viewport's letterbox.

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[zoomAt](../src_giant_toad_editor_camera/GiantToadEditorCamera/zoomAt.md)</span><span class="signature">({<span id="zoomAt-param-canvasPosition" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">canvasPosition</span>, </span><span id="zoomAt-param-scaleFactor" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">scaleFactor</span>, </span><span id="zoomAt-param-minZoom" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">minZoom</span> = <span class="default-value">0.5</span>, </span><span id="zoomAt-param-maxZoom" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">maxZoom</span> = <span class="default-value">4</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Zooms around a physical canvas anchor while retaining the world point beneath that anchor.

</div>

<div>

## Operators

<span class="name">[operator ==](https://api.flutter.dev/flutter/dart-core/Object/operator_equals.md)</span><span class="signature">(<span id="==-param-other" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
The equality operator.

<div>

<span class="feature">inherited</span>

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad_editor_camera](../src_giant_toad_editor_camera/index.md)
3.  GiantToadEditorCamera class

##### giant_toad_editor_camera library

<div>

</div>

</div>

<div>

</div>
