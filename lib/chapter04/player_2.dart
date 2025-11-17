class Player {
  String? firstName;
  String? lastName;
  String get fullName => "$firstName $lastName";
}

main() {
  Player somePlayer = Player();
  somePlayer.firstName = "Wilf";
  somePlayer.lastName = "Mannion";
  print(somePlayer.fullName); // prints Wilf Mannion
  // somePlayer.fullName = "George Camsell";
  // we have not defined a setter fullName so it doesn't compile
}
