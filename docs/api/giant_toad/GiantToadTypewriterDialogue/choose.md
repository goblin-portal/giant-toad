<div>

<div>

# <span class="kind-method">choose</span> method

</div>

<div>

<span class="returntype">T</span> <span class="name">choose</span>(\[

1.  <span id="choose-param-index" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">index</span></span>

\])

</div>

<div>

## Implementation

``` dart
T choose([int? index]) {
  if (!showingChoices) throw StateError('Dialogue choices are not active.');
  final selected = index ?? selectedChoice;
  if (selected < 0 || selected >= _choices.length) {
    throw RangeError.index(selected, _choices);
  }
  final value = _choices[selected].value;
  chosenValue = value;
  _choices = const [];
  return value;
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
4.  choose method

##### GiantToadTypewriterDialogue class

<div>

</div>

</div>

<div>

</div>
