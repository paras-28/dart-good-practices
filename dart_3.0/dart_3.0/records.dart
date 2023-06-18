void main() {
  //Records are immutable
  // record.name = "logitech" this won't work
  //if we don't mention return type at function we don't get $1, $2 as we get in recordFun2
  //Record are type safe as well
  var result1 = recordFun();
  print('result 1 ${result1.runtimeType}');

  var result2 = recordFun2();
  print('result 2 ${result2.$1}');

  var (a, b, c) = recordFun3();
  print('result 3 ${a}');

  var result4 = recordFun4();
  print('result 4 ${result4.name}');

  var record1 = (1, 2.0, "paras");
  print('record 1 ${record1.$3}');
  // with named parameter

  var record2 = (id: 1, 2.0, name: "paras");
  print('record 1 ${record2.name}');

  //Type safe
  var record3 = (id: 1, 2.0, name: "paras");
  record3 = (id: 4, 4.5, name: "logitech"); // this works
  record3 = (id: 4, name: "tribit", 6);
  print(record3);
}

// method 1
recordFun() {
  return (1, "paras", 4.0);
}

// method 2
(int, String, double) recordFun2() {
  return (1, "paras", 4.0);
}

// method 3
(int, String, double) recordFun3() {
  return (1, "paras", 4.0);
}

// method 4 named record
({int point, String name, double score}) recordFun4() {
  return (name: "paras", point: 1, score: 4.0);
}
