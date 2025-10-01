import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test(
    'preferences adapter persists JSON-compatible values by namespace',
    () async {
      SharedPreferences.setMockInitialValues({});
      final first = await GiantToadPreferencesStore.create(
        namespace: 'test_game',
      );
      await first.write('profile', {'name': 'Toad', 'score': 7});
      final second = await GiantToadPreferencesStore.create(
        namespace: 'test_game',
      );
      expect(await second.read('profile'), {'name': 'Toad', 'score': 7});
      expect(await second.keys(), {'profile'});
      await second.remove('profile');
      expect(await first.read('profile'), isNull);
    },
  );

  test(
    'save slots list, migrate, overwrite, and delete deterministic data',
    () async {
      final store = GiantToadMemoryStore();
      await store.write('save.old', {
        'schemaVersion': 1,
        'values': {'score': 4},
      });
      final slots = GiantToadSaveSlots(
        store: store,
        currentSchemaVersion: 2,
        migrations: {
          1: (old) => GiantToadSaveData(
            schemaVersion: 2,
            values: {...old.values, 'lives': 3},
          ),
        },
      );

      final migrated = await slots.load('old');
      expect(migrated!.schemaVersion, 2);
      expect(migrated.values, {'score': 4, 'lives': 3});
      await slots.save('new', {'ready': true});
      expect(await slots.list(), ['new', 'old']);
      await slots.delete('old');
      expect(await slots.list(), ['new']);
    },
  );

  test('save slots reject unsafe names and missing migrations', () async {
    final store = GiantToadMemoryStore();
    final slots = GiantToadSaveSlots(store: store, currentSchemaVersion: 2);
    expect(() => slots.load('../bad'), throwsArgumentError);
    await store.write('save.old', {
      'schemaVersion': 1,
      'values': <String, Object?>{},
    });
    await expectLater(slots.load('old'), throwsStateError);
  });

  test('save slots recover corrupt primary data from backup', () async {
    final store = GiantToadMemoryStore();
    final slots = GiantToadSaveSlots(store: store, currentSchemaVersion: 1);
    await slots.save('hero', {'score': 1});
    await slots.save('hero', {'score': 2});
    await store.write('save.hero', 'damaged');

    final recovered = await slots.load('hero');

    expect(recovered!.values, {'score': 1});
    expect(await store.read('save.hero.corrupt'), 'damaged');
    expect(await slots.list(), ['hero']);
    await slots.delete('hero');
    expect(await store.keys(), isEmpty);
  });

  test('autosave coalesces changes and retries failed writes', () async {
    var writes = 0;
    var fail = true;
    final autosave = GiantToadAutosaveCoordinator(
      delay: const Duration(seconds: 1),
      write: () async {
        writes++;
        if (fail) throw StateError('disk full');
      },
    );
    autosave.markDirty();
    await expectLater(autosave.flush(), throwsStateError);
    expect(autosave.isDirty, isTrue);
    fail = false;
    await autosave.flush();
    expect(writes, 2);
    expect(autosave.isDirty, isFalse);
  });

  test('typed settings preserve fallback behavior', () async {
    final settings = GiantToadSettings(GiantToadMemoryStore());
    expect(await settings.get('music', 0.8), 0.8);
    await settings.set('music', 0.5);
    expect(await settings.get('music', 0.8), 0.5);
    expect(await settings.get('music', 'wrong type'), 'wrong type');
    await settings.remove('music');
    expect(await settings.get('music', 0.8), 0.8);
  });
}
