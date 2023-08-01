//Info this final class have same concept from sealed classes
// you can't use this final class outside of this library

// classes which extends or implements final class it should be base, final , sealed

void main() {}

final class Animal {}

//  class Human extends Animal {} //  this won't work

// this works
sealed class Human extends Animal {}

base class Human1 extends Animal {}

final class Human2 extends Animal {}

interface class Animal4 {
  printData() {}
} // we can make Constructor of interface in dart but not in others language
// to do that in order to make a pure interface we can add abstract

class Animal5 implements Animal4 {
  @override
  printData() {
    throw UnimplementedError();
  }
}
