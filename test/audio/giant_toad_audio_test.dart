import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

class _Handle implements GiantToadAudioHandle {
  _Handle(this.volume);
  double volume;
  bool stopped = false;
  @override
  Future<void> setVolume(double volume) async => this.volume = volume;
  @override
  Future<void> stop() async => stopped = true;
}

class _Backend implements GiantToadAudioBackend {
  final handles = <_Handle>[];
  final assets = <String>[];
  @override
  Future<GiantToadAudioHandle> play(
    String asset, {
    required double volume,
    required bool loop,
    required bool longAudio,
  }) async {
    assets.add(asset);
    final handle = _Handle(volume);
    handles.add(handle);
    return handle;
  }
}

class _PreloadBackend extends _Backend
    implements GiantToadPreloadableAudioBackend {
  final preloaded = <String>[];

  @override
  Future<void> preload(String asset) async => preloaded.add(asset);
}

void main() {
  test('preloads supported effects and reports unsupported backends', () async {
    final backend = _PreloadBackend();
    final audio = GiantToadAudio(backend: backend);
    expect(await audio.preload('sounds/coin.wav'), isTrue);
    expect(backend.preloaded, ['sounds/coin.wav']);
    expect(await GiantToadAudio(backend: _Backend()).preload('x.wav'), isFalse);
  });

  test('queues browser audio until an activation gesture', () async {
    final backend = _Backend();
    final audio = GiantToadAudio(backend: backend, requiresActivation: true);
    final pending = audio.play('sounds/jump.wav');
    expect(backend.assets, isEmpty);
    await audio.unlock();
    expect(await pending, same(backend.handles.single));
    expect(audio.unlocked, isTrue);
  });

  test('combines master and bus volume', () async {
    final backend = _Backend();
    final audio = GiantToadAudio(backend: backend);
    audio.setVolume(GiantToadAudioBus.master, 0.5);
    audio.setVolume(GiantToadAudioBus.ui, 0.4);
    await audio.play(
      'sounds/click.wav',
      bus: GiantToadAudioBus.ui,
      volume: 0.5,
    );
    expect(backend.handles.single.volume, 0.1);
  });

  test('crossfades music and releases the previous handle', () async {
    final backend = _Backend();
    final audio = GiantToadAudio(backend: backend);
    await audio.playMusic('music/first.ogg');
    await audio.playMusic('music/second.ogg', fadeDuration: 1);
    await audio.update(0.5);
    expect(backend.handles[0].volume, 0.5);
    expect(backend.handles[1].volume, 0.5);
    await audio.update(0.5);
    expect(backend.handles[0].stopped, isTrue);
    expect(backend.handles[1].volume, 1);
  });
}
