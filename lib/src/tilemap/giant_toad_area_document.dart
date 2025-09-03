import 'dart:convert';

/// A named cell-space rectangle stored in an optional `areas.json` document.
class GiantToadMapArea {
  GiantToadMapArea({
    required this.id,
    required this.name,
    required this.type,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    this.areaSchema,
    Map<String, Object?> values = const {},
    Map<String, Object?> additionalFields = const {},
  }) : values = Map.unmodifiable(values),
       additionalFields = Map.unmodifiable(additionalFields) {
    if (id.isEmpty || name.isEmpty || type.isEmpty) {
      throw ArgumentError('Area id, name, and type must not be empty.');
    }
    if (width <= 0 || height <= 0) {
      throw ArgumentError('Area width and height must be positive.');
    }
  }

  factory GiantToadMapArea.fromJson(Map<String, Object?> json) {
    String requiredString(String key) {
      final value = json[key];
      if (value is! String || value.isEmpty) {
        throw FormatException('An area requires a non-empty string $key.');
      }
      return value;
    }

    int requiredInt(String key, {bool positive = false}) {
      final value = json[key];
      if (value is! int || (positive && value <= 0)) {
        throw FormatException(
          'An area requires a ${positive ? 'positive ' : ''}integer $key.',
        );
      }
      return value;
    }

    final rawValues = json['values'] ?? const <String, Object?>{};
    if (rawValues is! Map) {
      throw FormatException('Area values must be a JSON object.');
    }
    final additionalFields = Map<String, Object?>.from(json)
      ..remove('id')
      ..remove('name')
      ..remove('type')
      ..remove('areaSchema')
      ..remove('x')
      ..remove('y')
      ..remove('width')
      ..remove('height')
      ..remove('values');
    final areaSchema = json['areaSchema'];
    if (areaSchema != null && areaSchema is! String) {
      throw FormatException('Area areaSchema must be a string when present.');
    }
    return GiantToadMapArea(
      id: requiredString('id'),
      name: requiredString('name'),
      type: requiredString('type'),
      areaSchema: areaSchema as String?,
      x: requiredInt('x'),
      y: requiredInt('y'),
      width: requiredInt('width', positive: true),
      height: requiredInt('height', positive: true),
      values: Map<String, Object?>.from(rawValues),
      additionalFields: additionalFields,
    );
  }

  final String id;
  final String name;
  final String type;
  final String? areaSchema;
  final int x;
  final int y;
  final int width;
  final int height;
  final Map<String, Object?> values;
  final Map<String, Object?> additionalFields;

  bool containsCell(int cellX, int cellY) =>
      cellX >= x && cellX < x + width && cellY >= y && cellY < y + height;

  Map<String, Object?> toJson() => {
    ...additionalFields,
    'id': id,
    'name': name,
    'type': type,
    if (areaSchema != null) 'areaSchema': areaSchema,
    'x': x,
    'y': y,
    'width': width,
    'height': height,
    'values': values,
  };
}

/// An optional sparse-map `areas.json` document.
class GiantToadAreaDocument {
  GiantToadAreaDocument({
    required List<GiantToadMapArea> areas,
    Map<String, Object?> additionalFields = const {},
  }) : areas = List.unmodifiable(areas),
       additionalFields = Map.unmodifiable(additionalFields);

  factory GiantToadAreaDocument.fromJson(Map<String, Object?> json) {
    final rawAreas = json['areas'];
    if (rawAreas is! List) {
      throw FormatException('An areas document requires an areas array.');
    }
    return GiantToadAreaDocument(
      areas: rawAreas
          .map((area) {
            if (area is! Map) {
              throw FormatException('Areas must be JSON objects.');
            }
            return GiantToadMapArea.fromJson(Map<String, Object?>.from(area));
          })
          .toList(growable: false),
      additionalFields: Map<String, Object?>.from(json)..remove('areas'),
    );
  }

  final List<GiantToadMapArea> areas;
  final Map<String, Object?> additionalFields;

  Iterable<GiantToadMapArea> areasAtCell(int x, int y) =>
      areas.where((area) => area.containsCell(x, y));

  Map<String, Object?> toJson() => {
    ...additionalFields,
    'areas': areas.map((area) => area.toJson()).toList(growable: false),
  };
}

/// Decodes and encodes the JSON text stored in an `areas.json` file.
abstract final class GiantToadAreaDocumentCodec {
  static GiantToadAreaDocument decode(String source) {
    final decoded = jsonDecode(source);
    if (decoded is! Map) {
      throw FormatException('An areas document must be a JSON object.');
    }
    return GiantToadAreaDocument.fromJson(Map<String, Object?>.from(decoded));
  }

  static String encode(GiantToadAreaDocument document) =>
      jsonEncode(document.toJson());
}
