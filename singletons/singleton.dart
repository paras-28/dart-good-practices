class MySingleton {
  static final MySingleton _singleton = MySingleton._internal();

  String _valueToBeSet;
  String _valueAlreadyInSingleton;
  String _passedValueInContructor;

  get getValueToBeSet => _valueToBeSet;

  get getValueAlreadyInSingleton => _valueAlreadyInSingleton;

  get getPassedValueInConstructor => _passedValueInContructor;

  void setValue(newValue) {
    _valueToBeSet = newValue;
  }

  factory MySingleton(String passedString) {
    _singleton._valueAlreadyInSingleton = "foo";
    _singleton._passedValueInContructor = passedString;

    return _singleton;
  }

  MySingleton._internal();
}

void main() {
  MySingleton mySingleton = MySingleton("passedString");
  mySingleton.setValue("setValue");
  print(mySingleton.getPassedValueInConstructor);
  print(mySingleton.getValueToBeSet);
  print(mySingleton.getValueAlreadyInSingleton);
}
