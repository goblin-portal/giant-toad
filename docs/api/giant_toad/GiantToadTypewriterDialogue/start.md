<div>

<div>

# <span class="kind-method">start</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">start</span>(

1.  <span id="start-param-lines" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadTypewriterLine](../../giant_toad/GiantToadTypewriterLine-class.md)</span>\></span></span> <span class="parameter-name">lines</span>, {</span>
2.  <span id="start-param-choices" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadValueChoice](../../giant_toad/GiantToadValueChoice-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>\></span></span> <span class="parameter-name">choices</span> = <span class="default-value">const \[\]</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void start(
  Iterable<GiantToadTypewriterLine> lines, {
  Iterable<GiantToadValueChoice<T>> choices = const [],
}) {
  _lines = List.unmodifiable(lines);
  _choices = List.unmodifiable(choices);
  if (_lines.isEmpty && _choices.isEmpty) {
    throw ArgumentError('Dialogue requires lines or choices.');
  }
  _line = 0;
  _characters = 0;
  selectedChoice = 0;
  chosenValue = null;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadTypewriterDialogue<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../giant_toad/GiantToadTypewriterDialogue-class.md)
4.  start method

##### GiantToadTypewriterDialogue class

<div>

</div>

</div>

<div>

</div>
