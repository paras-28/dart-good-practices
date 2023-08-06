mixin Swimming on Walking {
  void swim() => print("swimming");
}

class Walking {
  void walk() => print("walking");
}

class Human extends Walking with Swimming {
  void jump() => print("jumping");
}

class Child extends Human {}

void main() {
  var obj = Child();
  obj.walk();
}
