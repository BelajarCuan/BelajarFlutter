class Lingkaran {
  late double _ruas;

  void setRuas(double value) {
    if (value < 0) {
      _ruas = value * -1;
    } else {
      _ruas = value;
    }
  }

  double getRuas() {
    return _ruas;
  }

  double hitungLuas() {
    return 3.14 * _ruas * _ruas;
  }
}
