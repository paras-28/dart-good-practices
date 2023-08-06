mixin Swimming {
  void swim() => print("swimming");
}

mixin class Walking {
  void walk() => print("walking");
}

// in dart 2.0 we can add an class with  "with" keyword
// but after dart 3.0 we need to add mixin keyword in order to use it
class Human with Walking, Swimming {
  void jump() => print("jumping");
}

void main() {
  var obj = Human();
  obj.walk();
}
