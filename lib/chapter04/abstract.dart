abstract class Player {
  String firstName;
  String lastName;
  Player(this.firstName, this.lastName);
  String get fullName;
}

class YouthPlayer extends Player {
  YouthPlayer(super.firstName, super.lastName);
  //... other class members
  @override
  String get fullName => "$firstName $lastName";
}
