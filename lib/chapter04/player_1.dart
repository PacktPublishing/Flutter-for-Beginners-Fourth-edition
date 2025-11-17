class Player {
  String? firstName;
  String? lastName;
  String getFullName() => "$firstName $lastName";
  // String getFullName() {
  //   return "$firstName $lastName";
  // }
}

main() {
  Player somePlayer = Player();
  somePlayer.firstName = "Wilf";
  somePlayer.lastName = "Mannion";
  print(somePlayer.getFullName()); // prints Clark KentWilf Mannion
}
