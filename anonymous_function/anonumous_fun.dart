void fun(void Function(int) action) {
  final list = [1, 2, 3, 4, 5];
  for (final item in list) {
    action(item);
  }
}

void main() {
  fun((int value) {
    print("Number $value");
  });
}
