<div>

<div>

# <span class="kind-class">GiantToadObjectPool\<<span class="type-parameter">T</span>\></span> class

</div>

<div>

Explicit reusable-object pool for high-churn non-Component values.

Use Flame's `ComponentPool` for Flame components; this type exists for records, vectors, command buffers, and other resettable Dart objects.

</div>

<div>

## Constructors

<span class="name">[GiantToadObjectPool](../giant_toad/GiantToadObjectPool/GiantToadObjectPool.md)</span><span class="signature">({<span id="param-create" class="parameter">required <span class="type-annotation">T</span> <span class="parameter-name">create</span>(), </span><span id="param-reset" class="parameter"><span class="type-annotation">void</span> <span class="parameter-name">reset</span>(<span id="param-value" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">value</span></span>)?</span>})</span>  

</div>

<div>

## Properties

<span class="name">[availableCount](../giant_toad/GiantToadObjectPool/availableCount.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[create](../giant_toad/GiantToadObjectPool/create.md)</span> <span class="signature">→ T Function<span class="signature">()</span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[reset](../giant_toad/GiantToadObjectPool/reset.md)</span> <span class="signature">→ void Function<span class="signature">(<span id="param-value" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">value</span></span>)</span>?</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[acquire](../giant_toad/GiantToadObjectPool/acquire.md)</span><span class="signature">() <span class="returntype parameter">→ T</span> </span>  

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[release](../giant_toad/GiantToadObjectPool/release.md)</span><span class="signature">(<span id="release-param-value" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">value</span></span>) <span class="returntype parameter">→ void</span> </span>  

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
3.  GiantToadObjectPool<span class="signature">\<<span class="type-parameter">T</span>\></span> class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
