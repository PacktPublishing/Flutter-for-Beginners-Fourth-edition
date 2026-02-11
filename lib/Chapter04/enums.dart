enum PlayerType { goalkeeper, defender, midfielder, striker }

class Player {
  PlayerType type;
  Player(this.type);
}

main() {
  print(PlayerType.values);
  Player somePlayer = Player(PlayerType.defender);
  somePlayer.type = PlayerType.striker;
  print(somePlayer.type);
  print(somePlayer.type.index);
  print(somePlayer.type.name);

  switch (somePlayer.type) {
    case PlayerType.goalkeeper:
      print('Save that shot!');

    case PlayerType.defender:
      print("Don't let them past!");

    case PlayerType.midfielder:
    case PlayerType.striker:
      print('Get that goal!');
  }
}
