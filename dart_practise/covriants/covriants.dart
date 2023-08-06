abstract class Food {}

class Veggie extends Food {}

abstract class Fruit {
  void fun(covariant Veggie a);
}

class Mango extends Fruit {
  void fun(Veggie a) {
    print("this is mango");
  }
}

class Banana extends Fruit {
  void fun(Food a) {
    print("this is Banana");
  }
}
