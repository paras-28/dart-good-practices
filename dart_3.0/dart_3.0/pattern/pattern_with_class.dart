void main() {
  Person person = Person(name: "paras", age: 26);

  var Person(:name, :age) = person;
  print(name); //paras

  var Person(name: nameVariable, age: ageVariable) = person;
  print(nameVariable); // paras
}

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}
