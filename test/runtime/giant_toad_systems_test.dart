import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  group('GiantToad runtime systems', () {
    test('memory store persists and removes values', () async {
      final store = GiantToadMemoryStore();
      await store.write('volume', 0.8);

      expect(await store.read('volume'), 0.8);
      await store.remove('volume');
      expect(await store.read('volume'), isNull);
    });

    test('worker returns a value from a background isolate', () async {
      expect(await GiantToadWorker.run(() => 21 * 2), 42);
    });
  });
}
