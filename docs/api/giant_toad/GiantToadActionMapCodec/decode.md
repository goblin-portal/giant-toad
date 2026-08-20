<div>

<div>

# <span class="kind-method">decode</span> static method

</div>

<div>

<span class="returntype">[GiantToadActionMap](../../giant_toad/GiantToadActionMap-class.md)</span> <span class="name">decode</span>(

1.  <span id="decode-param-source" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">source</span></span>

)

</div>

<div>

## Implementation

``` dart
static GiantToadActionMap decode(String source) {
  final decoded = jsonDecode(source);
  if (decoded is! Map) {
    throw FormatException('Action bindings must be a JSON object.');
  }
  return GiantToadActionMap.fromJson(Map<String, Object?>.from(decoded));
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadActionMapCodec](../../giant_toad/GiantToadActionMapCodec-class.md)
4.  decode static method

##### GiantToadActionMapCodec class

<div>

</div>

</div>

<div>

</div>
