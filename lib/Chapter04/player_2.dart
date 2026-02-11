class Player {
  String? firstName;
  String? lastName;
  String get fullName => "$firstName $lastName";
}

class PlayerWithSetter {
  String? firstName;
  String? lastName;
  String get fullName => "$firstName $lastName";
  set fullName(String fullName) {
    var parts = fullName.split(" ");
    this.firstName = parts.first;
    this.lastName = parts.last;
  }
}

main() {
  Player somePlayer = Player();
  somePlayer.firstName = "Wilf";
  somePlayer.lastName = "Mannion";
  print(somePlayer.fullName); // prints Wilf Mannion
  // somePlayer.fullName = "George Camsell";
  // we have not defined a setter fullName so it doesn't compile

  PlayerWithSetter anotherPlayer = PlayerWithSetter();
  anotherPlayer.firstName = "Wilf";
  anotherPlayer.lastName = "Mannion";
  print(anotherPlayer.fullName); // prints Wilf Mannion
  anotherPlayer.fullName = "George Camsell";
  print(anotherPlayer.fullName); // prints George Camsell
}
