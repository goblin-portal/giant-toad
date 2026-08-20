<div>

<div>

# <span class="kind-class">GiantToadSaveSlots</span> class

</div>

<div>

Named save slots with explicit schema migration.

</div>

<div>

## Constructors

<span class="name">[GiantToadSaveSlots](../giant_toad/GiantToadSaveSlots/GiantToadSaveSlots.md)</span><span class="signature">({<span id="param-store" class="parameter">required <span class="type-annotation">[GiantToadStore](../giant_toad/GiantToadStore-class.md)</span> <span class="parameter-name">store</span>, </span><span id="param-currentSchemaVersion" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">currentSchemaVersion</span>, </span><span id="param-migrations" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>, <span class="type-parameter">[GiantToadSaveMigration](../giant_toad/GiantToadSaveMigration.md)</span>\></span></span> <span class="parameter-name">migrations</span> = <span class="default-value">const {}</span>, </span><span id="param-keyPrefix" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">keyPrefix</span> = <span class="default-value">'save.'</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[currentSchemaVersion](../giant_toad/GiantToadSaveSlots/currentSchemaVersion.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[keyPrefix](../giant_toad/GiantToadSaveSlots/keyPrefix.md)</span> <span class="signature">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[migrations](../giant_toad/GiantToadSaveSlots/migrations.md)</span> <span class="signature">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>, <span class="type-parameter">[GiantToadSaveMigration](../giant_toad/GiantToadSaveMigration.md)</span>\></span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[store](../giant_toad/GiantToadSaveSlots/store.md)</span> <span class="signature">→ [GiantToadStore](../giant_toad/GiantToadStore-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

</div>

<div>

## Methods

<span class="name">[delete](../giant_toad/GiantToadSaveSlots/delete.md)</span><span class="signature">(<span id="delete-param-slot" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">slot</span></span>) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  

<span class="name">[list](../giant_toad/GiantToadSaveSlots/list.md)</span><span class="signature">() <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span>\></span></span> </span>  

<span class="name">[load](../giant_toad/GiantToadSaveSlots/load.md)</span><span class="signature">(<span id="load-param-slot" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">slot</span></span>) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadSaveData](../giant_toad/GiantToadSaveData-class.md)?</span>\></span></span> </span>  
Loads the primary payload, then an interrupted pending write, then backup. A recovered payload is promoted to primary and the damaged value is kept under `.corrupt` for diagnostics.

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[save](../giant_toad/GiantToadSaveSlots/save.md)</span><span class="signature">(<span id="save-param-slot" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">slot</span>, </span><span id="save-param-values" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">values</span></span>) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Writes through a pending key and retains the previous valid payload as a backup. Stores with atomic writes still benefit from corruption recovery; simpler stores cannot leave the only copy half-updated.

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
3.  GiantToadSaveSlots class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
