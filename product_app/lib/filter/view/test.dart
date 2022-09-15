class Accumulator {
  // ///[Accumulator] may be initialized with a specified value, otherwise, it will
  ///initialize to zero.
  Accumulator([this._value = 0]);

  ///The integer stored in this [Accumulator].
  int get value => _value;
  int _value;

  ///Increases the [value] by the `addend`.
  void increment(int addend) {
    assert(addend >= 0);
    _value += addend;
  }
}
