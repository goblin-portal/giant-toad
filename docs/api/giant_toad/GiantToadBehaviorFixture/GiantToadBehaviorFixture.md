<div>

<div>

# <span class="kind-constructor">GiantToadBehaviorFixture\<<span class="type-parameter">S</span>\></span> constructor

</div>

<div>

<span class="name">GiantToadBehaviorFixture\<<span class="type-parameter">S</span>\></span>({

1.  <span id="param-name" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span>, </span>
2.  <span id="param-create" class="parameter">required <span class="type-annotation">S</span> <span class="parameter-name">create</span>(), </span>
3.  <span id="param-update" class="parameter">required <span class="type-annotation">void</span> <span class="parameter-name">update</span>(</span>
    1.  <span id="param-state" class="parameter"><span class="type-annotation">S</span> <span class="parameter-name">state</span>, </span>
    2.  <span id="param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

    ),
4.  <span id="param-snapshot" class="parameter">required <span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">snapshot</span>(</span>
    1.  <span id="param-state" class="parameter"><span class="type-annotation">S</span> <span class="parameter-name">state</span></span>

    ),
5.  <span id="param-tickRate" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tickRate</span> = <span class="default-value">60</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadBehaviorFixture({
  required this.name,
  required this.create,
  required this.update,
  required this.snapshot,
  this.tickRate = 60,
}) {
  if (name.isEmpty) throw ArgumentError.value(name, 'name');
  if (tickRate <= 0) throw ArgumentError.value(tickRate, 'tickRate');
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadBehaviorFixture<span class="signature">\<<span class="type-parameter">S</span>\></span>](../../giant_toad/GiantToadBehaviorFixture-class.md)
4.  GiantToadBehaviorFixture.new constructor

##### GiantToadBehaviorFixture class

<div>

</div>

</div>

<div>

</div>
