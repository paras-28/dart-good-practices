void main() {
  var obj = Paras.namedConstructor();
  print("pretty print ${obj._a}");

  var obj2 = Paras.namedConstructorSecond(a: 4);
  print("pretty print ${obj2._a}");
}

class Paras {
  int _a;
  int _b;
  Paras(this._a, this._b);
  Paras.namedConstructor()
      : _a = 0,
        _b = 0;

  Paras.namedConstructorSecond({a})
      : _a = a,
        _b = 0;
}
