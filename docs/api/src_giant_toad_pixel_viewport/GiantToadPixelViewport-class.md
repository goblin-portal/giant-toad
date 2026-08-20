<div>

<div>

# <span class="kind-class">GiantToadPixelViewport</span> class

</div>

<div>

A fixed-resolution viewport that uses integer pixel scaling when possible.

Unlike Flame's `FixedResolutionViewport`, this viewport intentionally leaves unused canvas space as letterboxing rather than applying a fractional upscale.

</div>

<div>

## Constructors

<span class="name">[GiantToadPixelViewport](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/GiantToadPixelViewport.md)</span><span class="signature">({<span id="param-resolution" class="parameter">required <span class="type-annotation">[GiantToadResolution](../src_giant_toad_resolution/GiantToadResolution-class.md)</span> <span class="parameter-name">resolution</span>, </span><span id="param-mode" class="parameter"><span class="type-annotation">[GiantToadViewportMode](../src_giant_toad_pixel_viewport/GiantToadViewportMode.md)</span> <span class="parameter-name">mode</span> = <span class="default-value">GiantToadViewportMode.fixed</span>, </span><span id="param-pixelScale" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">pixelScale</span> = <span class="default-value">2</span>, </span><span id="param-children" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">children</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[metrics](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/metrics.md)</span> <span class="signature">↔ [GiantToadViewportMetrics](../src_giant_toad_pixel_viewport/GiantToadViewportMetrics-class.md)</span>  
The current logical-canvas placement within the game canvas.

<div>

<span class="feature">getter/setter pair</span>

</div>

<span class="name">[mode](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/mode.md)</span> <span class="signature">→ [GiantToadViewportMode](../src_giant_toad_pixel_viewport/GiantToadViewportMode.md)</span>  
Determines whether this viewport letterboxes or exposes extra space.

<div>

<span class="feature">final</span>

</div>

<span class="name">[pixelScale](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/pixelScale.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
Integer presentation scale used by [GiantToadViewportMode.expand](../src_giant_toad_pixel_viewport/GiantToadViewportMode.md).

<div>

<span class="feature">final</span>

</div>

<span class="name">[resolution](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/resolution.md)</span> <span class="signature">→ [GiantToadResolution](../src_giant_toad_resolution/GiantToadResolution-class.md)</span>  
The unscaled logical canvas resolution.

<div>

<span class="feature">final</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[virtualSize](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/virtualSize.md)</span> <span class="signature">→ dynamic</span>  
<div>

<span class="feature">no setter</span>

</div>

</div>

<div>

## Methods

<span class="name">[clip](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/clip.md)</span><span class="signature">(<span id="clip-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[containsLocalPoint](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/containsLocalPoint.md)</span><span class="signature">(<span id="containsLocalPoint-param-point" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  

<span class="name">[globalToLocal](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/globalToLocal.md)</span><span class="signature">(<span id="globalToLocal-param-point" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">point</span>, {</span><span id="globalToLocal-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ dynamic</span> </span>  

<span class="name">[localToGlobal](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/localToGlobal.md)</span><span class="signature">(<span id="localToGlobal-param-point" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">point</span>, {</span><span id="localToGlobal-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ dynamic</span> </span>  

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onGameResize](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/onGameResize.md)</span><span class="signature">(<span id="onGameResize-param-size" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">size</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[onViewportResize](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/onViewportResize.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[transformCanvas](../src_giant_toad_pixel_viewport/GiantToadPixelViewport/transformCanvas.md)</span><span class="signature">(<span id="transformCanvas-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  

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
2.  [giant_toad_pixel_viewport](../src_giant_toad_pixel_viewport/index.md)
3.  GiantToadPixelViewport class

##### giant_toad_pixel_viewport library

<div>

</div>

</div>

<div>

</div>
