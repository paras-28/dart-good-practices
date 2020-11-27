void main() {
  var buffer = StringBuffer();

  for (var i = 0; i < 40; ++i) {
    buffer.write("$i");
  }
  var value = buffer.toString();
  print("pretty print ${value}");
}
