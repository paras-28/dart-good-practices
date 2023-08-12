typedef FunSignature = void Function(String s, String t);

tempfun(FunSignature fun) {
  fun("paras", "Arora");
}

void main() {
  tempfun((s, t) {
    print(s + " " + t);
  });
}
