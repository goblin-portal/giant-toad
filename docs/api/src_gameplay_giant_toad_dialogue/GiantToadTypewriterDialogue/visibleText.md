<div>

<div>

# <span class="kind-property">visibleText</span> property

</div>

<div>

<div>

<span class="returntype">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> get <span class="name">visibleText</span>

</div>

<div>

## Implementation

``` dart
String get visibleText {
  final line = currentLine;
  if (line == null) return '';
  return line.text.substring(
    0,
    _characters.floor().clamp(0, line.text.length),
  );
}
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_dialogue](../../src_gameplay_giant_toad_dialogue/index.md)
3.  [GiantToadTypewriterDialogue<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue-class.md)
4.  visibleText property

##### GiantToadTypewriterDialogue class

<div>

</div>

</div>

<div>

</div>
