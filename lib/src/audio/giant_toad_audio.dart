import 'dart:async';

import 'package:flame_audio/flame_audio.dart';

enum GiantToadAudioBus { master, music, sound, ui }

abstract interface class GiantToadAudioHandle {
  Future<void> setVolume(double volume);
  Future<void> stop();
}

abstract interface class GiantToadAudioBackend {
  Future<GiantToadAudioHandle> play(
    String asset, {
    required double volume,
    required bool loop,
    required bool longAudio,
  });
}

/// Optional backend contract for decoding short effects before gameplay.
abstract interface class GiantToadPreloadableAudioBackend {
  Future<void> preload(String asset);
}

class GiantToadFlameAudioBackend
    implements GiantToadAudioBackend, GiantToadPreloadableAudioBackend {
  @override
  Future<void> preload(String asset) async {
    await FlameAudio.audioCache.load(asset);
  }

  @override
  Future<GiantToadAudioHandle> play(
    String asset, {
    required double volume,
    required bool loop,
    required bool longAudio,
  }) async {
    final AudioPlayer player;
    if (longAudio) {
      player = loop
          ? await FlameAudio.loopLongAudio(asset, volume: volume)
          : await FlameAudio.playLongAudio(asset, volume: volume);
    } else {
      player = loop
          ? await FlameAudio.loop(asset, volume: volume)
          : await FlameAudio.play(asset, volume: volume);
    }
    return _FlameAudioHandle(player);
  }
}

class _FlameAudioHandle implements GiantToadAudioHandle {
  _FlameAudioHandle(this.player);
  final AudioPlayer player;

  @override
  Future<void> setVolume(double volume) => player.setVolume(volume);

  @override
  Future<void> stop() async {
    await player.stop();
    await player.dispose();
  }
}

/// Audio buses and music crossfades over Flame Audio. Web hosts can construct
/// this with [requiresActivation] and call [unlock] from their first pointer or
/// keyboard gesture; requests are queued rather than lost.
class GiantToadAudio {
  GiantToadAudio({
    GiantToadAudioBackend? backend,
    this.requiresActivation = false,
  }) : backend = backend ?? GiantToadFlameAudioBackend(),
       _unlocked = !requiresActivation;

  final GiantToadAudioBackend backend;
  final bool requiresActivation;
  bool _unlocked;
  final List<Future<void> Function()> _queued = [];
  final Map<GiantToadAudioBus, double> _volumes = {
    for (final bus in GiantToadAudioBus.values) bus: 1,
  };

  GiantToadAudioHandle? _music;
  GiantToadAudioHandle? _previousMusic;
  double _musicFadeDuration = 0;
  double _musicFadeElapsed = 0;

  bool get unlocked => _unlocked;
  double volume(GiantToadAudioBus bus) => _volumes[bus]!;

  void setVolume(GiantToadAudioBus bus, double volume) {
    if (!volume.isFinite || volume < 0 || volume > 1) {
      throw ArgumentError.value(volume, 'volume', 'must be in 0...1');
    }
    _volumes[bus] = volume;
  }

  /// Loads and decodes an effect before its latency-sensitive first use.
  /// Returns false when a custom backend does not support preloading.
  Future<bool> preload(String asset) async {
    final currentBackend = backend;
    if (currentBackend is! GiantToadPreloadableAudioBackend) return false;
    await (currentBackend as GiantToadPreloadableAudioBackend).preload(asset);
    return true;
  }

  double effectiveVolume(GiantToadAudioBus bus, double volume) =>
      volume * this.volume(bus) * this.volume(GiantToadAudioBus.master);

  Future<GiantToadAudioHandle> play(
    String asset, {
    GiantToadAudioBus bus = GiantToadAudioBus.sound,
    double volume = 1,
    bool loop = false,
    bool longAudio = false,
  }) {
    if (asset.isEmpty || asset.startsWith('/') || asset.contains('..')) {
      throw ArgumentError.value(
        asset,
        'asset',
        'must be a safe relative asset path',
      );
    }
    final result = Completer<GiantToadAudioHandle>();
    Future<void> start() async {
      try {
        result.complete(
          await backend.play(
            asset,
            volume: effectiveVolume(bus, volume),
            loop: loop,
            longAudio: longAudio,
          ),
        );
      } catch (error, stack) {
        result.completeError(error, stack);
      }
    }

    if (_unlocked) {
      unawaited(start());
    } else {
      _queued.add(start);
    }
    return result.future;
  }

  Future<void> unlock() async {
    if (_unlocked) return;
    _unlocked = true;
    final queued = List<Future<void> Function()>.of(_queued);
    _queued.clear();
    for (final start in queued) {
      await start();
    }
  }

  Future<void> playMusic(String asset, {double fadeDuration = 0.5}) async {
    if (fadeDuration < 0) {
      throw ArgumentError.value(
        fadeDuration,
        'fadeDuration',
        'must not be negative',
      );
    }
    final next = await play(
      asset,
      bus: GiantToadAudioBus.music,
      volume: _music == null || fadeDuration == 0 ? 1 : 0,
      loop: true,
      longAudio: true,
    );
    if (_music == null || fadeDuration == 0) {
      await _music?.stop();
      _music = next;
      _previousMusic = null;
      return;
    }
    _previousMusic = _music;
    _music = next;
    _musicFadeDuration = fadeDuration;
    _musicFadeElapsed = 0;
  }

  Future<void> update(double dt) async {
    if (_previousMusic == null || _music == null) return;
    _musicFadeElapsed = (_musicFadeElapsed + dt).clamp(0, _musicFadeDuration);
    final progress = _musicFadeDuration == 0
        ? 1.0
        : _musicFadeElapsed / _musicFadeDuration;
    final volume = effectiveVolume(GiantToadAudioBus.music, 1);
    await _previousMusic!.setVolume(volume * (1 - progress));
    await _music!.setVolume(volume * progress);
    if (progress >= 1) {
      await _previousMusic!.stop();
      _previousMusic = null;
    }
  }

  Future<void> dispose() async {
    await _previousMusic?.stop();
    await _music?.stop();
    _previousMusic = null;
    _music = null;
    _queued.clear();
  }
}
