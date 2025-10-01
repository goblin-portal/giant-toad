import 'package:giant_toad/giant_toad.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GiantToadAreaDocument', () {
    test('round-trips unknown root and nested fields', () {
      final document = GiantToadAreaDocument.fromJson(const {
        'revision': 7,
        'areas': [
          {
            'id': 'trigger',
            'name': 'Trigger',
            'type': 'area',
            'x': -2,
            'y': 1,
            'width': 3,
            'height': 4,
            'values': {'enabled': true},
            'future': {'mode': 'new'},
          },
        ],
      });

      expect(document.additionalFields['revision'], 7);
      expect(document.areas.single.additionalFields['future'], {'mode': 'new'});
      expect(document.toJson()['revision'], 7);
      expect(
        (document.toJson()['areas'] as List).single,
        containsPair('future', {'mode': 'new'}),
      );
    });
  });
}
