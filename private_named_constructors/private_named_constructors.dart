class Foo {
  String _name;
  Foo._({name}) : _name = name;
  Foo({name}) : _name = name;
  Foo._internalSecondConstructors({name}) : _name = name;
}

void main() {
  Foo obj = Foo._(name: "paras");
  print("pretty print ${obj._name}");

  Foo obj2 = Foo._internalSecondConstructors(name: "paras arora");
  print("pretty print ${obj2._name}");

  Foo obj3 = Foo(name: "hola developer");
  print("pretty print ${obj3._name}");
}
