class SomeObject {
  String username() => "aeon";
}

void main() {
  final aeonObject = SomeObject();
  print(aeonObject.username());

  SomeObject someOtherObject;
  print(someOtherObject.username());
}
