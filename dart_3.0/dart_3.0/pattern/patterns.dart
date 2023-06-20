void main() {
  List list = [
    3,
    5,
    6,
  ];
  var [a, b, c] = list;

  print(b); // 5
  var list2 = [1, 2, 3, 4, 5, 6, 7, 8];
  var [a1, b1, c1, ...d] = list2;
  print(d); //  it prints [4,5,6,7,8]
}
