void showNumber(int value) {
  print("$value");
}

void main() {
  // List of values
  final numbers = [1, 2, 3, 4, 5];
  // Good
  numbers.forEach(showNumber);
  // Bad
  numbers.forEach((int val) {
    showNumber(val);
  });
}
