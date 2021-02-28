class Foo {
  String _name;
  Foo._({name}) : _name = name;
}

void main() {
  Foo obj = Foo._(name: "paras");
  print("pretty print ${obj._name}");
}
