<div>

<div>

# <span class="kind-method">register</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">register</span>(

1.  <span id="register-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span>, </span>
2.  <span id="register-param-read" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">read</span>()</span>

)

</div>

<div>

## Implementation

``` dart
void register(String name, Object? Function() read) {
  if (name.isEmpty) {
    throw ArgumentError.value(name, 'name', 'must not be empty');
  }
  _values[name] = read;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadDiagnostics](../../giant_toad/GiantToadDiagnostics-class.md)
4.  register method

##### GiantToadDiagnostics class

<div>

</div>

</div>

<div>

</div>
