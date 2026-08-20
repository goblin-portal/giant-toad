<div>

<div>

# <span class="kind-class">GiantToadBehaviorFixture\<<span class="type-parameter">S</span>\></span> class

</div>

<div>

Runs fixed-timestep behavioral fixtures without coupling them to the renderer. Fixtures compare game state and lifecycle outcomes rather than exact pixels.

</div>

<div>

## Constructors

<span class="name">[GiantToadBehaviorFixture](../giant_toad/GiantToadBehaviorFixture/GiantToadBehaviorFixture.md)</span><span class="signature">({<span id="param-name" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span>, </span><span id="param-create" class="parameter">required <span class="type-annotation">S</span> <span class="parameter-name">create</span>(), </span><span id="param-update" class="parameter">required <span class="type-annotation">void</span> <span class="parameter-name">update</span>(<span id="param-state" class="parameter"><span class="type-annotation">S</span> <span class="parameter-name">state</span>, </span><span id="param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>), </span><span id="param-snapshot" class="parameter">required <span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">snapshot</span>(<span id="param-state" class="parameter"><span class="type-annotation">S</span> <span class="parameter-name">state</span></span>), </span><span id="param-tickRate" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tickRate</span> = <span class="default-value">60</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[create](../giant_toad/GiantToadBehaviorFixture/create.md)</span> <span class="signature">→ S Function<span class="signature">()</span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[name](../giant_toad/GiantToadBehaviorFixture/name.md)</span> <span class="signature">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[snapshot](../giant_toad/GiantToadBehaviorFixture/snapshot.md)</span> <span class="signature">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span> Function<span class="signature">(<span id="param-state" class="parameter"><span class="type-annotation">S</span> <span class="parameter-name">state</span></span>)</span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[tickRate](../giant_toad/GiantToadBehaviorFixture/tickRate.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[update](../giant_toad/GiantToadBehaviorFixture/update.md)</span> <span class="signature">→ void Function<span class="signature">(<span id="param-state" class="parameter"><span class="type-annotation">S</span> <span class="parameter-name">state</span>, </span><span id="param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>)</span></span>  
<div>

<span class="feature">final</span>

</div>

</div>

<div>

## Methods

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[run](../giant_toad/GiantToadBehaviorFixture/run.md)</span><span class="signature">({<span id="run-param-ticks" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">ticks</span>, </span><span id="run-param-captureTicks" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>\></span></span> <span class="parameter-name">captureTicks</span> = <span class="default-value">const \[\]</span>, </span><span id="run-param-inputs" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadBehaviorInput](../giant_toad/GiantToadBehaviorInput-class.md)<span class="signature">\<<span class="type-parameter">S</span>\></span></span>\></span></span> <span class="parameter-name">inputs</span> = <span class="default-value">const \[\]</span></span>}) <span class="returntype parameter">→ [GiantToadBehaviorResult](../giant_toad/GiantToadBehaviorResult-class.md)</span> </span>  

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
3.  GiantToadBehaviorFixture<span class="signature">\<<span class="type-parameter">S</span>\></span> class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
