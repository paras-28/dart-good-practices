mixin Swimming on Walking {
  void swim() => print("swimming");
}

class Walking {
  void walk() => print("walking");
}

class Human extends Walking with Swimming {
  void jump() => print("jumping");
}

void main() {
  var obj = Human();
  obj.jump();
}
