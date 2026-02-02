class Player {
  String? firstName;
  String? lastName;
  static String nameLabel = "Player name:";
  String get fullName => "$nameLabel $firstName $lastName";
  // modified to print the new static field "nameLabel"
}

class PlayerWithStaticPrint {
  String? firstName;
  String? lastName;
  static String nameLabel = "Player name:";
  static void printsPlayer(Player person) {
    print("$nameLabel ${person.firstName} ${person.lastName}");
  }
}

main() {
  Player somePlayer = Player();
  somePlayer.firstName = "Wilf";
  somePlayer.lastName = "Mannion";
  Player anotherPlayer = Player();
  anotherPlayer.firstName = "George";
  anotherPlayer.lastName = "Camsell";
  print(somePlayer.fullName);
  // prints Player name: Wilf Mannion
  print(anotherPlayer.fullName);
  // prints Player name: George Camsell
  Player.nameLabel = "Footballer name:";
  print(somePlayer.fullName);
  // prints Footballer name: Wilf Mannion
  print(anotherPlayer.fullName);
  // prints Footballer name: George Camsell
  Player finalPlayer = Player();
  finalPlayer.firstName = "Jonny";
  finalPlayer.lastName = "Howson";
  PlayerWithStaticPrint.printsPlayer(finalPlayer);
  // prints Player name: Jonny Howson
}
