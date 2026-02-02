class PlayerWithVerboseConstructor {
  late String firstName;
  late String lastName;
  PlayerWithVerboseConstructor(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
  String getFullName() => "$firstName $lastName";
}

class Player {
  String firstName;
  String lastName;
  Player(this.firstName, this.lastName);
  String getFullName() => "$firstName $lastName";
}

void main() {
  // Player somePlayer = Player(); No longer compiles because there is a defined constructor
  PlayerWithVerboseConstructor somePlayer = PlayerWithVerboseConstructor("Wilf", "Mannion");
  print(somePlayer.getFullName());
  Player anotherPlayer = Player("Wilf", "Mannion");
  print(anotherPlayer.getFullName());
}
