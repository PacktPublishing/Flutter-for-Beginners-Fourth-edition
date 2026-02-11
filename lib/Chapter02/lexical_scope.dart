String league = "Championship";

void main() {
  var homeTeam = "Middlesbrough";

  void fixtureFunction() {
    var awayTeam = "Sunderland";
    var footballGround = "Riverside";

    print("$homeTeam vs $awayTeam at $footballGround in the $league");
    // Prints Middlesbrough vs Sunderland at Riverside in the Championship

    void matchFunction() {
      var awayTeam = "Sheffield Wednesday";
      print("$homeTeam vs $awayTeam at $footballGround in the $league");
      // Prints Middlesbrough vs Sheffield Wednesday at Riverside in the Championship
    }
  }
}
