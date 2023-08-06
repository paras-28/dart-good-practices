enum Animal { Lion, wolf, snake }
void main() {
  Animal val = Animal.wolf;
  switch (val) {
    case Animal.snake:
      print("Snake");
      break;
    case Animal.Lion:
      {
        print("lion");
      }
      break;
    default:
      {
        print("wolf");
      }
  }
}
