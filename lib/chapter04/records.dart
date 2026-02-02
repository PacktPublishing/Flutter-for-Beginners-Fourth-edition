void main(List<String> args) {
  {
    String getFinalScore(int fixtureNumber) {
      // Lookup fixture in a database
      return "1-0";
    }
  }

  {
    (int homeScore, int awayScore) getFinalScore(int fixtureNumber) {
      // Lookup fixture in database
      return (1, 0);
    }

    void printScore(int fixtureId) {
      var (homeScore, awayScore) = getFinalScore(fixtureId);
      print("$homeScore - $awayScore");
    }
  }
}
