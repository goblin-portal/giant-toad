<div>

<div>

# <span class="kind-constructor">GiantToadTypewriterDialogue\<<span class="type-parameter">T</span>\></span> constructor

</div>

<div>

<span class="name">GiantToadTypewriterDialogue\<<span class="type-parameter">T</span>\></span>({

1.  <span id="param-charactersPerSecond" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">charactersPerSecond</span> = <span class="default-value">35</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadTypewriterDialogue({this.charactersPerSecond = 35}) {
  if (charactersPerSecond <= 0 || !charactersPerSecond.isFinite) {
    throw ArgumentError.value(charactersPerSecond, 'charactersPerSecond');
  }
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
4.  GiantToadTypewriterDialogue.new constructor

##### GiantToadTypewriterDialogue class

<div>

</div>

</div>

<div>

</div>
