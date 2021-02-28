class Student {
  var _id;
  var _name;

  Student({int id, String name})
      : _id = id,
        _name = name;

  //  void set id(int id) => _id = id;
  //   void set name(String name) => _name = name;
}

void main() {
  Student obj = Student(id: 34, name: "paras");

  print("pretty print ${obj._id}");
}
