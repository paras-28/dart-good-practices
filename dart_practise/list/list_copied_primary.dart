void main() {
  // Method 1 List.of();
  //They are used to create a new list of the same type as the original,
  // but List.of() can be used to upcast:
  var originalList = <int>[1, 2, 3, 4];
  var list1 = List<num>.of(originalList, growable: true); // return List<int>
  //if growable is true it means you can add or remove elments from list
  print(list1.runtimeType);
  //____________________________________________________________________________

  //Info another ways to copy list

  var newList3 = [...originalList]; // List<int>
  var newList4 = [for (var v in originalList) v]; // List<int>
  List<int> list5 = originalList;
  list5.add(5);
  originalList.add(6);
  //Prefered way to copy for faster performance
  print("list5 ${list5}"); // [1, 2, 3, 4, 5]
  print("modified original list $originalList"); //[1, 2, 3, 4, 6]

  //____________________________________________________________________________
  // List.from is for downcast
  // Use this if you want to downcast and therefore it is important that
  // the subtype is a type of supertype.
  var originalList2 = <num>[1, 2, 3, 4];
  var listOfListFrom = List.from(originalList); // return List<dynamic>
  var c = List<int>.from(originalList2); // return List<int>
  print(listOfListFrom.runtimeType);
  print(c.runtimeType);

//______________________________________________________________________________
//Info method 1 to get duplicate list
  List<CustomModel> duplicateList = [];
  duplicateList = List.from(customModelsList);
}

abstract class ParentOfCustomModel {
  Map<String, dynamic> toMap();
}

class CustomModel implements ParentOfCustomModel {
  String? name;
  int? id;
  String? birthdate;

  CustomModel({
    this.name,
    this.id,
    this.birthdate,
  });

  CustomModel copyWith({
    String? name,
    int? id,
    String? birthdate,
  }) {
    return CustomModel(
      name: name ?? this.name,
      id: id ?? this.id,
      birthdate: birthdate ?? this.birthdate,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'id': this.id,
      'birthdate': this.birthdate,
    };
  }
}

List<CustomModel> customModelsList = [
  CustomModel(
    name: "John",
    id: 1,
    birthdate: DateTime(1990, 5, 15).toIso8601String(),
  ),
  CustomModel(
    name: "Alice",
    id: 2,
    birthdate: DateTime(1985, 9, 28).toIso8601String(),
  ),
  CustomModel(
    name: "Bob",
    id: 3,
    birthdate: DateTime(2000, 3, 10).toIso8601String(),
  ),
  // Add more instances as needed
];

printResult(List<ParentOfCustomModel> list, String tag) {
  print(
      "________________________________________________________________________________");
  print(tag);
  for (ParentOfCustomModel obj in list) {
    int index = list.indexOf(obj);
    print("At $index : ${obj.toMap()}");
  }
}
