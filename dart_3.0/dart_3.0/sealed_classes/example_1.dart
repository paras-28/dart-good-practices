//Info if you define sealed class in this Library(this file)
//you cant use sealed classes in another file
// Its almost same as abstract classes

void main() {
  Animal animal = Cat();

  switch (animal) {
    case Dog():
      print('its dog');
    case Cat():
      print('its cat');
    default:
      print("not found!");
  }
}

sealed class Animal {}

class Human implements Animal {}

class Dog implements Animal {}

class Cat implements Animal {}
