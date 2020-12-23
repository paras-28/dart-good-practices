class Test {
  int _secret;
  double _superSecret;
  Test(int age, double wallet)
      : _secret = age,
        _superSecret = wallet;
}

void main() {
  var obj = Test(2, 4);
}
