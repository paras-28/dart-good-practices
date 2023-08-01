abstract class Parent {
  late String name;
}

class Child1 extends Parent {
  @override
  String name = "Paras";
}

class Child2 implements Parent {
  @override
  String name = "Paras";
}

void main() {
  Parent obj = Child1();
  print(obj.name);
}
