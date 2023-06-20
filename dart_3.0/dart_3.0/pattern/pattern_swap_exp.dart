void main() {
  var (a, b) = ("yes", "no");
  print((a, b));
  (a, b) = (b, a);
  print((a, b));
}
