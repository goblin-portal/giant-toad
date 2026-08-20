<div>

<div>

# <span class="kind-method">choose</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">choose</span>(

1.  <span id="choose-param-index" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">index</span></span>

)

</div>

<div>

## Implementation

``` dart
void choose(int index) {
  final available = choices;
  if (index < 0 || index >= available.length) {
    throw RangeError.index(index, available);
  }
  final choice = available[index];
  choice.onSelect?.call();
  if (choice.next == null) {
    _current = null;
  } else {
    _enter(choice.next!);
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
3.  [GiantToadDialogue](../../src_gameplay_giant_toad_dialogue/GiantToadDialogue-class.md)
4.  choose method

##### GiantToadDialogue class

<div>

</div>

</div>

<div>

</div>
