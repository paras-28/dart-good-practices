abstract class Player {
  factory Player.customNamedConstructor() {
    return TennisPlayer();
  }
  void playerInfo();
}

class TennisPlayer extends Player {
  @override
  void playerInfo() {
    // TODO: implement playerInfo
  }
}

class BasketBallPlayer extends Player {
  @override
  void playerInfo() {
    // TODO: implement playerInfo
  }
}
