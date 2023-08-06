// import '../covriants/covriants.dart';

void main() {
  var json = {"fruit": "Apple", "size": "Large", "color": "Red"};

  var {'fruit': fruit, "size": size} = json;

  print(fruit); // print Apple

  if (json case {'fruit': String fruit, "size": String size1}) {
    print(size1);
  } else {
    print("Failed to map with json");
  }
}
