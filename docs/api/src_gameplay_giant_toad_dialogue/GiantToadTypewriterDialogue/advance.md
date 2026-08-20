<div>

<div>

# <span class="kind-method">advance</span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">advance</span>()

</div>

<div>

Completes the current line, advances to the next line, or closes dialogue.

</div>

<div>

## Implementation

``` dart
bool advance() {
  final line = currentLine;
  if (line == null) return false;
  if (!lineComplete) {
    _characters = line.text.length.toDouble();
    return true;
  }
  _line++;
  _characters = 0;
  return true;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_dialogue](../../src_gameplay_giant_toad_dialogue/index.md)
3.  [GiantToadTypewriterDialogue<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../src_gameplay_giant_toad_dialogue/GiantToadTypewriterDialogue-class.md)
4.  advance method

##### GiantToadTypewriterDialogue class

<div>

</div>

</div>

<div>

</div>
