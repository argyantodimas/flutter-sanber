import 'dart:math' as math;

class Lingkaran {
  final double _pi = math.pi;
  late double _ruas;
  Lingkaran(this._ruas);

  void setRuas(double value){
    this._ruas = value < 0 ? value * -1 : value;
  }
  double getPi() => this._pi;
  double getRuas() => this._ruas;
  double getLuas() => this._pi * math.pow(this._ruas, 2);

}
