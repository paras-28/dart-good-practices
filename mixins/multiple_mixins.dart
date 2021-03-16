mixin Swimming {
  void swim() => print("swimming");
}

class Walking {
  void walk() => print("walking");
}

class Human with Walking, Swimming {
  void jump() => print("jumping");
}

void main() {
  var obj = Human();
  obj.walk();
}
