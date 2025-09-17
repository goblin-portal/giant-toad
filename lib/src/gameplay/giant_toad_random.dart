/// Deterministic, state-serializable 32-bit RNG with identical Dart VM and web
/// behavior.
class GiantToadRandom {
  GiantToadRandom(int seed) : _state = seed & _mask {
    if (_state == 0) _state = 0x6d2b79f5;
  }

  static const _mask = 0xffffffff;
  int _state;

  int get state => _state;
  set state(int value) {
    _state = value & _mask;
    if (_state == 0) _state = 0x6d2b79f5;
  }

  int nextUint32() {
    var value = _state;
    value ^= (value << 13) & _mask;
    value ^= value >>> 17;
    value ^= (value << 5) & _mask;
    _state = value & _mask;
    return _state;
  }

  double nextDouble() => nextUint32() / 0x1_0000_0000;

  int nextInt(int max) {
    if (max <= 0) throw ArgumentError.value(max, 'max', 'must be positive');
    return (nextDouble() * max).floor();
  }

  int range(int min, int maxInclusive) {
    if (maxInclusive < min) throw ArgumentError('maxInclusive must be >= min');
    return min + nextInt(maxInclusive - min + 1);
  }

  bool chance(double probability) {
    if (probability < 0 || probability > 1 || !probability.isFinite) {
      throw ArgumentError.value(probability, 'probability', 'must be in 0...1');
    }
    return nextDouble() < probability;
  }
}
