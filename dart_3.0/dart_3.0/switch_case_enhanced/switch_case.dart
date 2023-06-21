void main() {
  var list = ["first", "last"];
  const String name = "paras";
  switch (list) {
    case ["first", "last2"]:
      print("worked");
    // dart 3.0 no need to write break statement

    //info here is checking first item of list either 'first' , "First"
    case ["first" || "FIRST", "last2" || "LAST2"]:
      print("case2 worked");

    case ["first", "last"] when name == "paras":
      print("case3 worked");

    default:
      print("default");
  }
}
