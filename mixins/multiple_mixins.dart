mixin Swimming {
  void swim() => print("swimming");
}

mixin Walking {
  void walk() => print("walking");
}

class Human with Swimming {
  void jump() => print("jumping");
}

void main() {
  var obj = Human();
  obj.swim();
}
