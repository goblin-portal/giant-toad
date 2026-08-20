<div>

<div>

# <span class="kind-constructor">GiantToadSaveSlots</span> constructor

</div>

<div>

<span class="name">GiantToadSaveSlots</span>({

1.  <span id="param-store" class="parameter">required <span class="type-annotation">[GiantToadStore](../../giant_toad/GiantToadStore-class.md)</span> <span class="parameter-name">store</span>, </span>
2.  <span id="param-currentSchemaVersion" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">currentSchemaVersion</span>, </span>
3.  <span id="param-migrations" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>, <span class="type-parameter">[GiantToadSaveMigration](../../giant_toad/GiantToadSaveMigration.md)</span>\></span></span> <span class="parameter-name">migrations</span> = <span class="default-value">const {}</span>, </span>
4.  <span id="param-keyPrefix" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">keyPrefix</span> = <span class="default-value">'save.'</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadSaveSlots({
  required this.store,
  required this.currentSchemaVersion,
  this.migrations = const {},
  this.keyPrefix = 'save.',
}) {
  if (currentSchemaVersion < 1) {
    throw ArgumentError.value(
      currentSchemaVersion,
      'currentSchemaVersion',
      'must be positive',
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
3.  [GiantToadSaveSlots](../../giant_toad/GiantToadSaveSlots-class.md)
4.  GiantToadSaveSlots.new constructor

##### GiantToadSaveSlots class

<div>

</div>

</div>

<div>

</div>
