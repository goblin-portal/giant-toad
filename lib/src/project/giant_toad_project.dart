import 'dart:convert';

/// Versioned metadata for a typed Giant Toad pixel-art project.
class GiantToadProject {
  const GiantToadProject({
    required this.name,
    required this.title,
    required this.version,
    required this.pixelWidth,
    required this.pixelHeight,
    this.icon = 'assets/images/gt-icon.png',
    this.schemaVersion = currentSchemaVersion,
  });

  static const currentSchemaVersion = 1;

  final int schemaVersion;
  final String name;
  final String title;
  final String version;
  final int pixelWidth;
  final int pixelHeight;
  final String icon;

  static int _parseSchema(Object? value) {
    final schema = value ?? currentSchemaVersion;
    if (schema is! int || schema != currentSchemaVersion) {
      throw FormatException('Unsupported project schema version: $schema.');
    }
    return schema;
  }

  static String _parseString(
    Object? value, {
    required bool Function(String) isValid,
    required String error,
  }) {
    if (value is! String || !isValid(value)) {
      throw FormatException(error);
    }
    return value;
  }

  static int _parseDimension(Object? value) {
    if (value is! int || value <= 0) {
      throw const FormatException(
        'Pixel dimensions must be positive integers.',
      );
    }
    return value;
  }

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

  static GiantToadProject decode(String source) {
    final value = jsonDecode(source);
    if (value is! Map<String, Object?>) {
      throw const FormatException('project.json must contain an object.');
    }
    return GiantToadProject.fromJson(value);
  }

  Map<String, Object?> toJson() => {
    'schemaVersion': schemaVersion,
    'name': name,
    'title': title,
    'version': version,
    'pixelWidth': pixelWidth,
    'pixelHeight': pixelHeight,
    'icon': icon,
  };

  String encode() =>
      '${const JsonEncoder.withIndent('  ').convert(toJson())}\n';

  static final _packageName = RegExp(r'^[a-z][a-z0-9_]*$');
  static final _version = RegExp(r'^\d+\.\d+\.\d+(?:[-+][0-9A-Za-z.-]+)?$');
}

/// Canonical project asset roots. Games may add folders but must not reinterpret
/// these paths across platforms.
abstract final class GiantToadAssets {
  static const audio = 'assets/audio';
  static const fonts = 'assets/fonts';
  static const images = 'assets/images';
  static const maps = 'assets/maps';

  static const roots = [audio, fonts, images, maps];
}
