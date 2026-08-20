<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">update</span>(

1.  <span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

)

</div>

<div>

## Implementation

``` dart
void update(double dt) {
  if (dt < 0 || !dt.isFinite) throw ArgumentError.value(dt, 'dt');
  final line = currentLine;
  if (line != null) {
    _characters = (_characters + dt * charactersPerSecond).clamp(
      0,
      line.text.length.toDouble(),
    );
  }
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
4.  update method

##### GiantToadTypewriterDialogue class

<div>

</div>

</div>

<div>

</div>
