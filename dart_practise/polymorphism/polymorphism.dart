class Widget {
  void render() {
    print("Rendering widget");
  }
}

void main() {
  Widget obj = TextWidget();

  obj.render();
}

class TextWidget extends Widget {
  void render() {
    // super.render();
    print("Render TextWidget");
  }
}
