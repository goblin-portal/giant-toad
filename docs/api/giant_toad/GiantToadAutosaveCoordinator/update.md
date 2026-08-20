<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">update</span>(

1.  <span id="update-param-elapsed" class="parameter"><span class="type-annotation">[Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.md)</span> <span class="parameter-name">elapsed</span></span>

)

</div>

<div>

## Implementation

``` dart
void update(Duration elapsed) {
  if (!_dirty || _active != null) return;
  _elapsed += elapsed;
  if (_elapsed >= delay) unawaited(flush());
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadAutosaveCoordinator](../../giant_toad/GiantToadAutosaveCoordinator-class.md)
4.  update method

##### GiantToadAutosaveCoordinator class

<div>

</div>

</div>

<div>

</div>
