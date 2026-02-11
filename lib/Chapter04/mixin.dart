import 'package:hello_world/Chapter04/player_4.dart';

mixin class DefendingSkills {
  tackle() {
    print("Tackling a player...");
  }
}

mixin class ShootingSkills {
  shoot() {
    print("Taking a shot...");
  }
}

class Midfielder extends Player with DefendingSkills, ShootingSkills {
  Midfielder(String firstName, String lastName) : super(firstName, lastName);
}

class Striker extends Player with ShootingSkills {
  Striker(String firstName, String lastName) : super(firstName, lastName);
}
