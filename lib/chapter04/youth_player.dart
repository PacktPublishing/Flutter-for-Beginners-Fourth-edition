import 'package:hello_world/chapter04/player_4.dart';

class YouthPlayer extends Player {
  String nickName;
  YouthPlayer(
    super.firstName,
    super.lastName,
    this.nickName,
  );
  @override
  String toString() => "${getFullName()}, aka $nickName";
}

main() {
  YouthPlayer youthPlayer = YouthPlayer("Gareth", "Southgate", "Sir");
  print(youthPlayer);
  // Prints Gareth Southgate, aka Sir
}
