void main() {
  customFunction(TextWidget());
  customFunction(ButtonWidget());
}

void customFunction(Widget obj) {
  obj.render();
}

class TextWidget extends Widget {
  @override
  void render() {
    print("Render TextWidget");
  }
}

class ButtonWidget extends Widget {
  @override
  void render() {
    print("Render ButtonWidget");
  }
}

abstract class Widget implements Render {
  void enable() {
    print("Its enable");
  }
}

abstract class Render {
  void render();
}
