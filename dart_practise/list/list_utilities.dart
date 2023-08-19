import 'dart:html';

void main() {
  // return type void this funtion goes at every element and gives an oppotunity
  // to perfom an action at every step
  originalList.forEach((element) {
    print(element.name);
  });
// _____________________________________________________________________________

// List<String>
// its return type is iterable in order to make list we have to type cast it by .toList()
// Iterable is unidirectional , it basically goes step by step
// we basically use this to generate new list of different type
  List<String> listOFNames =
      originalList.map((e) => e.name.toString()).toList();
  print(listOFNames.runtimeType);

//______________________________________________________________________________
  List<School> list3 = originalList.where((element) {
    return element.name.toString() == "ABC School";
  }).toList();

  printResult(list3, "where method: ");

//______________________________________________________________________________
//  return Type bool
  bool isContain = originalList.contains(School());
//______________________________________________________________________________
}

List<School> originalList = [
  School(
    id: 1,
    name: 'ABC School',
    listOfFacilities: ['Library', 'Playground'],
    listOfStudents: [
      Student(id: 101, name: 'Alice', hobbies: ['Reading', 'Painting']),
      Student(id: 102, name: 'Bob', hobbies: ['Sports', 'Music']),
    ],
  ),
  School(
    id: 2,
    name: 'XYZ School',
    listOfFacilities: ['Gym', 'Computer Lab'],
    listOfStudents: [
      Student(id: 201, name: 'Charlie', hobbies: ['Swimming', 'Chess']),
      Student(id: 202, name: 'David', hobbies: ['Dancing', 'Cooking']),
    ],
  ),
  School(
    id: 3,
    name: 'PQR School',
    listOfFacilities: ['Science Lab', 'Auditorium'],
    listOfStudents: [
      Student(id: 301, name: 'Eve', hobbies: ['Singing', 'Photography']),
      Student(id: 302, name: 'Frank', hobbies: ['Drawing', 'Coding']),
    ],
  ),
  School(
    id: 4,
    name: 'LMN School',
    listOfFacilities: ['Sports Field', 'Art Studio'],
    listOfStudents: [
      Student(id: 401, name: 'Grace', hobbies: ['Basketball', 'Writing']),
      Student(id: 402, name: 'Henry', hobbies: ['Cooking', 'Reading']),
    ],
  ),
  School(
    id: 5,
    name: 'RST School',
    listOfFacilities: ['Music Room', 'Drama Theater'],
    listOfStudents: [
      Student(id: 501, name: 'Ivy', hobbies: ['Soccer', 'Singing']),
      Student(id: 502, name: 'Jack', hobbies: ['Painting', 'Gardening']),
    ],
  ),
];

abstract class ParentOfCustomModel {
  Map<String, dynamic> toMap();
}

class School implements ParentOfCustomModel {
  int? id;
  String? name;
  List<String>? listOfFacilities;
  List<Student>? listOfStudents;

  School({this.id, this.name, this.listOfFacilities, this.listOfStudents});

  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     (other is School &&
  //         runtimeType == other.runtimeType &&
  //         id == other.id &&
  //         name == other.name &&
  //         listOfFacilities == other.listOfFacilities &&
  //         listOfStudents == other.listOfStudents);

  // @override
  // int get hashCode =>
  //     id.hashCode ^
  //     name.hashCode ^
  //     listOfFacilities.hashCode ^
  //     listOfStudents.hashCode;

  @override
  String toString() {
    return 'School{' +
        ' id: $id,' +
        ' name: $name,' +
        ' listOfFacilities: $listOfFacilities,' +
        ' listOFStudents: $listOfStudents,' +
        '}';
  }

  School copyWith({
    int? id,
    String? name,
    List<String>? listOfFacilities,
    List<Student>? listOFStudents,
  }) {
    return School(
      id: id ?? this.id,
      name: name ?? this.name,
      listOfFacilities: listOfFacilities ?? this.listOfFacilities,
      listOfStudents: listOFStudents ?? this.listOfStudents,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'listOfFacilities': this.listOfFacilities,
      'listOFStudents': this.listOfStudents,
    };
  }
}

class Student implements ParentOfCustomModel {
  int? id;
  String? name;
  List<String>? hobbies;

  Student({
    this.id,
    this.name,
    this.hobbies,
  });

  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     (other is Student &&
  //         runtimeType == other.runtimeType &&
  //         id == other.id &&
  //         name == other.name &&
  //         hobbies == other.hobbies);

  // @override
  // int get hashCode => id.hashCode ^ name.hashCode ^ hobbies.hashCode;

  @override
  String toString() {
    return 'Student{' +
        ' id: $id,' +
        ' name: $name,' +
        ' hobbies: $hobbies,' +
        '}';
  }

  Student copyWith({
    int? id,
    String? name,
    List<String>? hobbies,
  }) {
    return Student(
      id: id ?? this.id,
      name: name ?? this.name,
      hobbies: hobbies ?? this.hobbies,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'hobbies': this.hobbies,
    };
  }
}

printResult(List<ParentOfCustomModel> list, String tag) {
  print(
      "_____________________________________________________________________");
  print(tag);
  for (ParentOfCustomModel obj in list) {
    int index = list.indexOf(obj);
    print("At $index : ${obj.toMap()}");
  }
}
