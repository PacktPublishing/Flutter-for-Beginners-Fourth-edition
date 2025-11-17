String league = "Champtionship";

void main() {
  var homeTeam = "Middlesbrough";

  void fixtureFunction() {
    var awayTeam = "Sunderland";

    void matchFunction() {
      var footballGround = "Riverside";

      print("$homeTeam vs $awayTeam at $footballGround in the $league");
      // Prints Middlesbrough vs Sunderland at Riverside in the Championship
      awayTeam = "Sheffield Wednesday";
      print("$homeTeam vs $awayTeam at $footballGround in the $league");
      // Prints Middlesbrough vs Sheffield Wednesday at Riverside in the Championship
    }
  }
}
