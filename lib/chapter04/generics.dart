main() {
  {
    var placeNames = <String>["Middlesbrough", "Barcelona"];
    var footballGrounds = <String, String>{
      "Middlesbrough": "The Riverside",
      "Barcelona": "Nou Camp",
    };
  }

  {
    var footballGrounds = <String, String?>{
      "Middlesbrough": "The Riverside",
      "Barcelona": "Nou Camp",
      "Barnmouth": null,
    };
  }
}
