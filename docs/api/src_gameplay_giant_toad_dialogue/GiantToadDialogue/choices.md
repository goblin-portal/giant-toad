<div>

<div>

# <span class="kind-property">choices</span> property

</div>

<div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadDialogueChoice](../../src_gameplay_giant_toad_dialogue/GiantToadDialogueChoice-class.md)</span>\></span></span> get <span class="name">choices</span>

</div>

<div>

## Implementation

``` dart
List<GiantToadDialogueChoice> get choices =>
    _current?.choices
        .where((choice) => choice.isEnabled)
        .toList(growable: false) ??
    const [];
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_dialogue](../../src_gameplay_giant_toad_dialogue/index.md)
3.  [GiantToadDialogue](../../src_gameplay_giant_toad_dialogue/GiantToadDialogue-class.md)
4.  choices property

##### GiantToadDialogue class

<div>

</div>

</div>

<div>

</div>
