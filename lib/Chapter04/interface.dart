class Player {
  String firstName;
  String lastName;
  Player(this.firstName, this.lastName);
  String get fullName => "$firstName $lastName";
}

class YouthPlayer implements Player {
  String nickName;
  @override
  String firstName;
  @override
  String lastName;
  YouthPlayer(this.firstName, this.lastName, this.nickName);
  @override
  String get fullName => "$firstName $lastName";
  @override
  String toString() => "$fullName, also known as $nickName";
}

abstract interface class PlayerInterface {
  String get fullName;
  String toString();
}

class PlayerImplementation implements PlayerInterface {
  String nickName;
  String firstName;
  String lastName;
  PlayerImplementation(this.firstName, this.lastName, this.nickName);
  @override
  String get fullName => "$firstName $lastName";
  @override
  String toString() => "$fullName, also known as $nickName";
}
