import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  group('GiantToadProject', () {
    test('round-trips versioned pixel project metadata', () {
      const project = GiantToadProject(
        name: 'toad_game',
        title: 'Toad Game',
        version: '1.2.3',
        pixelWidth: 320,
        pixelHeight: 180,
      );

      expect(
        GiantToadProject.decode(project.encode()).toJson(),
        project.toJson(),
      );
      expect(project.icon, 'assets/images/gt-icon.png');
      expect(GiantToadAssets.roots, hasLength(4));
    });

    test('rejects unsafe or malformed metadata', () {
      expect(
        () => GiantToadProject.fromJson({
          'name': 'Bad Name',
          'title': 'Bad',
          'version': '1.0.0',
          'pixelWidth': 320,
          'pixelHeight': 180,
        }),
        throwsFormatException,
      );
      expect(
        () => GiantToadProject.fromJson({
          'name': 'good_name',
          'title': 'Bad',
          'version': '1.0.0',
          'pixelWidth': 0,
          'pixelHeight': 180,
          'icon': '../outside.png',
        }),
        throwsFormatException,
      );
    });
  });
}
