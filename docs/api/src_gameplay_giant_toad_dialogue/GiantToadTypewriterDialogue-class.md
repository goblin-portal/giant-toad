<div>

<div>

# <span class="kind-class">GiantToadTypewriterDialogue\<<span class="type-parameter">T</span>\></span> class

</div>

<div>

Deterministic typewriter/choice presentation state shared by keyboard, controller, pointer, and Flutter overlay renderers.

</div>

<div>

## Constructors

<span class="name">[GiantToadTypewriterDialogue](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/GiantToadTypewriterDialogue.md)</span><span class="signature">({<span id="param-charactersPerSecond" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">charactersPerSecond</span> = <span class="default-value">35</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[active](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/active.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[charactersPerSecond](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/charactersPerSecond.md)</span> <span class="signature">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[choices](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/choices.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadValueChoice](../src_gameplay_giant_toad_dialogue/GiantToadValueChoice-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>\></span></span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[chosenValue](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/chosenValue.md)</span> <span class="signature">↔ T?</span>  
<div>

<span class="feature">getter/setter pair</span>

</div>

<span class="name">[currentLine](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/currentLine.md)</span> <span class="signature">→ [GiantToadTypewriterLine](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterLine-class.md)?</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[lineComplete](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/lineComplete.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[selectedChoice](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/selectedChoice.md)</span> <span class="signature">↔ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
<div>

<span class="feature">getter/setter pair</span>

</div>

<span class="name">[showingChoices](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/showingChoices.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[visibleText](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/visibleText.md)</span> <span class="signature">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

</div>

<div>

## Methods

<span class="name">[advance](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/advance.md)</span><span class="signature">() <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Completes the current line, advances to the next line, or closes dialogue.

<span class="name">[choose](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/choose.md)</span><span class="signature">(\[<span id="choose-param-index" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">index</span></span>\]) <span class="returntype parameter">→ T</span> </span>  

<span class="name">[moveChoice](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/moveChoice.md)</span><span class="signature">(<span id="moveChoice-param-delta" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">delta</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[start](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/start.md)</span><span class="signature">(<span id="start-param-lines" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadTypewriterLine](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterLine-class.md)</span>\></span></span> <span class="parameter-name">lines</span>, {</span><span id="start-param-choices" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadValueChoice](../src_gameplay_giant_toad_dialogue/GiantToadValueChoice-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>\></span></span> <span class="parameter-name">choices</span> = <span class="default-value">const \[\]</span></span>}) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[update](../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue/update.md)</span><span class="signature">(<span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>) <span class="returntype parameter">→ void</span> </span>  

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
2.  [giant_toad_dialogue](../src_gameplay_giant_toad_dialogue/index.md)
3.  GiantToadTypewriterDialogue<span class="signature">\<<span class="type-parameter">T</span>\></span> class

##### giant_toad_dialogue library

<div>

</div>

</div>

<div>

</div>
