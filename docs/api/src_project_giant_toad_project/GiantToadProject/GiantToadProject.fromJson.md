<div>

<div>

# <span class="kind-constructor">GiantToadProject.fromJson</span> constructor

</div>

<div>

<span class="name">GiantToadProject.fromJson</span>(

1.  <span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>

)

</div>

<div>

## Implementation

``` dart
factory GiantToadProject.fromJson(Map<String, Object?> json) {
  final schema = _parseSchema(json['schemaVersion']);
  final name = _parseString(
    json['name'],
    isValid: _packageName.hasMatch,
    error: 'Project name must be a Dart package name.',
  );
  final title = _parseString(
    json['title'],
    isValid: (value) => value.trim().isNotEmpty,
    error: 'Project title must not be empty.',
  );
  final version = _parseString(
    json['version'],
    isValid: _version.hasMatch,
    error: 'Project version must use semantic versioning.',
  );
  final width = _parseDimension(json['pixelWidth']);
  final height = _parseDimension(json['pixelHeight']);
  final icon = _parseString(
    json['icon'] ?? 'assets/images/gt-icon.png',
    isValid: (value) => !value.startsWith('/') && !value.contains('..'),
    error: 'Project icon must be a safe relative path.',
  );
  return GiantToadProject(
    schemaVersion: schema,
    name: name,
    title: title,
    version: version,
    pixelWidth: width,
    pixelHeight: height,
    icon: icon,
  );
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
4.  GiantToadProject.fromJson factory constructor

##### GiantToadProject class

<div>

</div>

</div>

<div>

</div>
