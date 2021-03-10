class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });

  Person copyWith({
    String? name,
    int? age,
  }) =>
      Person(name: name ?? this.name, age: age ?? this.age);

  @override
  String toString() => "$name, $age";
}

void main() {
  const me = const Person(name: "Paras", age: 24);

  final anotherMe = me.copyWith();

  print("$me");
  print("$anotherMe");
}
