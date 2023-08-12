void main() {
  //Info method 1 to get duplicate list
  List<CustomModel> duplicateList = [];
  duplicateList = List.from(customModelsList);

  // for (CustomModel customModel in customModelsList) {
  //   duplicateList.add(customModel.copyWith());
  // }

  String searchKey = "John";

// Info search particular key
  List<CustomModel> result1 = customModelsList.where((element) {
    return element.name!.toLowerCase().contains(searchKey.toLowerCase());
  }).toList();

  printResult(result1, "Info search particular key");
// _____________________________________________________________________________________
//Info sort from a to Z
  duplicateList.sort((a, b) {
    return a.name.toString().compareTo(b.name.toString());
  });

  printResult(duplicateList, "Info sort from a to Z");

//______________________________________________________________________________________
  //Info sort from z to a
  duplicateList.sort((b, a) {
    return a.name.toString().compareTo(b.name.toString());
  });

  printResult(duplicateList, "Info sort from z to a");
//_______________________________________________________________________________________
// Info sort low id value to high value id
  duplicateList.sort((a, b) {
    return a.id!.compareTo(b.id ?? 0);
  });

  printResult(duplicateList, "Info sort low id value to high value id");

  //_______________________________________________________________________________________
// Info sort high id value to low value id
  duplicateList.sort((a, b) {
    return b.id!.compareTo(a.id ?? 0);
  });

  printResult(duplicateList, "Info sort high id value to low value id");

  //_______________________________________________________________________________________
// Info sort oldest First
  duplicateList.sort((a, b) {
    DateTime ad = DateTime.parse(a.birthdate.toString());
    DateTime bd = DateTime.parse(b.birthdate.toString());
    return ad.compareTo(bd);
  });

  printResult(duplicateList, "oldest  first ");
  //_______________________________________________________________________________________
// Info sort latest First
  duplicateList.sort((a, b) {
    DateTime ad = DateTime.parse(a.birthdate.toString());
    DateTime bd = DateTime.parse(b.birthdate.toString());
    return bd.compareTo(ad);
  });

  printResult(duplicateList, "oldest  first ");
}

printResult(List<ParentOfCustomModel> list, String tag) {
  print(
      "________________________________________________________________________________");
  print(tag);
  for (ParentOfCustomModel obj in list) {
    int index = list.indexOf(obj);
    print("At $index : ${obj.toMap()}");
  }
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
