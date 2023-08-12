class Dad {
  String properties;
  // Dad(this.properties);
  Dad.namedConstructor(this.properties);
}

class Son extends Dad {
  String a;
  Son(this.a) : super.namedConstructor(a);
}
