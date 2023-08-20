void main() {
  List<List<int>> listOfLists = [
    [1, 2, 3],
    [4, 5],
    [6, 7, 8, 9]
  ];

  List<int> flattenedList = listOfLists.expand((list) => list).toList();
  print(flattenedList); // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
}
