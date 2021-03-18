abstract class Player {
  Player();

  factory Player.named() {
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
