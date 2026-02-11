class Player {
  String? firstName;
  String? lastName;
  String getFullName() => "$firstName $lastName";

  // What the arrow notation above is equivalent to:
  // String getFullName() {
  //   return "$firstName $lastName";
  // }
}

main() {
  Player somePlayer = Player();
  somePlayer.firstName = "Wilf";
  somePlayer.lastName = "Mannion";
  print(somePlayer.getFullName()); // prints Wilf Mannion
}
