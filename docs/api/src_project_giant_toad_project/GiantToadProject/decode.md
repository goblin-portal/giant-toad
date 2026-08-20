<div>

<div>

# <span class="kind-method">decode</span> static method

</div>

<div>

<span class="returntype">[GiantToadProject](../../src_project_giant_toad_project/GiantToadProject-class.md)</span> <span class="name">decode</span>(

1.  <span id="decode-param-source" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">source</span></span>

)

</div>

<div>

## Implementation

``` dart
static GiantToadProject decode(String source) {
  final value = jsonDecode(source);
  if (value is! Map<String, Object?>) {
    throw const FormatException('project.json must contain an object.');
  }
  return GiantToadProject.fromJson(value);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_project](../../src_project_giant_toad_project/index.md)
3.  [GiantToadProject](../../src_project_giant_toad_project/GiantToadProject-class.md)
4.  decode static method

##### GiantToadProject class

<div>

</div>

</div>

<div>

</div>
