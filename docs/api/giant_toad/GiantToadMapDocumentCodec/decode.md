<div>

<div>

# <span class="kind-method">decode</span> static method

</div>

<div>

<span class="returntype">[GiantToadMapDocument](../../giant_toad/GiantToadMapDocument-class.md)</span> <span class="name">decode</span>(

1.  <span id="decode-param-source" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">source</span></span>

)

</div>

<div>

## Implementation

``` dart
static GiantToadMapDocument decode(String source) {
  final decoded = jsonDecode(source);
  if (decoded is! Map) {
    throw FormatException('A map document must be a JSON object.');
  }
  return GiantToadMapDocument.fromJson(Map<String, Object?>.from(decoded));
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadMapDocumentCodec](../../giant_toad/GiantToadMapDocumentCodec-class.md)
4.  decode static method

##### GiantToadMapDocumentCodec class

<div>

</div>

</div>

<div>

</div>
