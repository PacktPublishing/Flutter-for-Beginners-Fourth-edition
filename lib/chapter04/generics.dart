main() {
  {
    List placeNames = ["Middlesbrough", "New York"];
    placeNames.add(1);
    print("Place names: $placeNames");
    // prints Place names: [Middlesbrough, New York, 1]
  }

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
