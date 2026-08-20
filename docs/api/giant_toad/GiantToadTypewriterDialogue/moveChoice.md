<div>

<div>

# <span class="kind-method">moveChoice</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">moveChoice</span>(

1.  <span id="moveChoice-param-delta" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">delta</span></span>

)

</div>

<div>

## Implementation

``` dart
void moveChoice(int delta) {
  if (!showingChoices || _choices.isEmpty) return;
  selectedChoice = (selectedChoice + delta) % _choices.length;
  if (selectedChoice < 0) selectedChoice += _choices.length;
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
4.  moveChoice method

##### GiantToadTypewriterDialogue class

<div>

</div>

</div>

<div>

</div>
