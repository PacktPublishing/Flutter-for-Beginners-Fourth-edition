class Player {
  late String firstName;
  late String lastName;
  Player(this.firstName, this.lastName);
  String getFullName() => "$firstName $lastName";
}

void main() {
  // Player somePlayer = Player(); No longer compiles because there is a defined constructor
  Player somePlayer = Player("Wilf", "Mannion");
  print(somePlayer.getFullName());
}
