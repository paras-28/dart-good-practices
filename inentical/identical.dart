class Paras {
  int a;
  Paras(this.a);
}

void main() {
  var obj = Paras(2);
  var obj2 = Paras(2);
  var obj3 = obj;
  print("check : ${identical(obj, obj3)}");
  print("check : ${obj == obj2}");
}
