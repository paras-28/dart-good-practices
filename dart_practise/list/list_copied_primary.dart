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
  List<int> list5 = originalList.toList();
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
}
