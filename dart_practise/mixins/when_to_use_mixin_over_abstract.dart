mixin Activity {
  void pushUp() => print("push up");

  squat() => print("squat ");
}

abstract class Sports with Activity {
  StrengthImprovement();
}

abstract class Bodybuilding with Activity {
  muscleSizeIncrease() => print("muscle size increase");
}
