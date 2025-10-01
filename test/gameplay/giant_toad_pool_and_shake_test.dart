import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  group('GiantToad object pool', () {
    test('resets and reuses released objects', () {
      var created = 0;
      final pool = GiantToadObjectPool<List<int>>(
        create: () => [++created],
        reset: (value) => value.clear(),
      );
      final first = pool.acquire();
      pool.release(first);

      final reused = pool.acquire();

      expect(identical(reused, first), isTrue);
      expect(reused, isEmpty);
      expect(created, 1);
    });
  });
}
