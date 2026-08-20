<div>

<div>

# <span class="kind-class">GiantToadMapEdit</span> class

</div>

<div>

A committed, reversible batch of sparse cell changes.

A brush stroke becomes one [GiantToadMapEdit](../giant_toad/GiantToadMapEdit-class.md), so undo/redo applies an atomic user action rather than individual pointer samples.

</div>

<div>

## Constructors

<span class="name">[GiantToadMapEdit](../giant_toad/GiantToadMapEdit/GiantToadMapEdit.md)</span><span class="signature">(<span id="param-changes" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapCellChange](../giant_toad/GiantToadMapCellChange-class.md)</span>\></span></span> <span class="parameter-name">changes</span></span>)</span>  

</div>

<div>

## Properties

<span class="name">[changes](../giant_toad/GiantToadMapEdit/changes.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapCellChange](../giant_toad/GiantToadMapCellChange-class.md)</span>\></span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[inverse](../giant_toad/GiantToadMapEdit/inverse.md)</span> <span class="signature">→ [GiantToadMapEdit](../giant_toad/GiantToadMapEdit-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[affectedChunks](../giant_toad/GiantToadMapEdit/affectedChunks.md)</span><span class="signature">(<span id="affectedChunks-param-chunkSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span></span>) <span class="returntype parameter">→ [Set](https://api.flutter.dev/flutter/dart-core/Set-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadEditedChunk](../giant_toad/GiantToadEditedChunk.md)</span>\></span></span> </span>  
Layer/chunk pairs whose rendered content changes when this edit applies.

<span class="name">[apply](../giant_toad/GiantToadMapEdit/apply.md)</span><span class="signature">(<span id="apply-param-document" class="parameter"><span class="type-annotation">[GiantToadMapDocument](../giant_toad/GiantToadMapDocument-class.md)</span> <span class="parameter-name">document</span></span>) <span class="returntype parameter">→ [GiantToadMapDocument](../giant_toad/GiantToadMapDocument-class.md)</span> </span>  
Applies this edit without mutating `document`.

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

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
2.  [giant_toad](../giant_toad/index.md)
3.  GiantToadMapEdit class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
