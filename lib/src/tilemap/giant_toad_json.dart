/// Internal typed accessors for sparse-map JSON documents.
final class GiantToadJsonReader {
  const GiantToadJsonReader(this.json, {required this.context});

  final Map<String, Object?> json;
  final String context;

  String string(String key, {String? fallback, bool safePath = false}) {
    final value = json[key] ?? fallback;
    if (value is! String || value.isEmpty) {
      throw FormatException('$context $key must be a non-empty string.');
    }
    if (safePath && (value.startsWith('/') || value.contains('..'))) {
      throw FormatException('$context $key must be a safe relative path.');
    }
    return value;
  }

  int integer(String key, {int? fallback, bool allowZero = false}) {
    final value = json[key] ?? fallback;
    if (value is! int || (allowZero ? value < 0 : value <= 0)) {
      final requirement = allowZero ? 'non-negative' : 'positive';
      throw FormatException('$context $key must be $requirement.');
    }
    return value;
  }

  double finiteNumber(
    String key, {
    double? fallback,
    bool nonNegative = false,
  }) {
    final value = json[key] ?? fallback;
    if (value is! num || !value.isFinite || (nonNegative && value < 0)) {
      final requirement = nonNegative ? 'a non-negative number' : 'finite';
      throw FormatException('$context $key must be $requirement.');
    }
    return value.toDouble();
  }
}
