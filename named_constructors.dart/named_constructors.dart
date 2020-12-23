void main() {
  var obj = Paras.namedConstructor();
}

class Paras {
  int _a;
  int _b;
  Paras(this._a, this._b);
  Paras.namedConstructor()
      : _a = 0,
        _b = 0;
}
