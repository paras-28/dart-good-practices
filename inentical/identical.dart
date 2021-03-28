class Player {
  int a;
  Player(this.a);
}

void main() {
  var obj = Player(2);
  var obj2 = Player(2);
  var obj3 = obj;

  print("check : ${identical(obj, obj2)}"); // false

  print("check : ${identical(obj, obj3)}"); // true

  int b = 4;
  int c = 4;
  print("check 2 ${identical(b, c)}"); // true
}
