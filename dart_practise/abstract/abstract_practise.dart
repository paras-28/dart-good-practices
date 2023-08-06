abstract class Parent {
  late String name;
  customfun();

  customFunc2() {}
}

class Child1 extends Parent {
  @override
  customfun() {}
}

class Child2 implements Parent {
  // we can override variable by = or by getter and setter
  @override
  String name = "Paras";

  @override
  customfun() {
    print("Child2 function");
  }

  @override
  customFunc2() {}

  // @override
  // String get name => "Paras";

  // @override
  // set name(String _name) {
  //   name = name;
  // }
}

void main() {
  Parent obj = Child1();
  print(obj.name);
}
