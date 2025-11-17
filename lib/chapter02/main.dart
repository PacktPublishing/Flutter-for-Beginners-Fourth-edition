void main() {
  for (int i = 0; i < 10; i++) {
    print('hello ${i + 1}');
  }

  {
    var inferredString = "Hello"; // Type inferred as String
    String explicitString = "World"; // Type is explicit
  }

  {
    int? newNumber; // newNumber is initialized to null
    print(newNumber); // Prints null
    newNumber = 42; // Update the value of newNumber
    print(newNumber); // Prints 42
  }

  {
    late int newNumber; // newNumber type allows nullability
    // Do some initialisation stuff
    newNumber = 42; // Update the value of newNumber
    print(newNumber); // Prints 42
  }

  {
    int? goals;
    // Other code
    if (goals != null) {
      print(goals + 2);
    }
  }

  {
    List dynamicList = []; // Create an empty List
    print(dynamicList.length); // Prints 0
    dynamicList.add("Hello");
    dynamicList.add("world");
    print(dynamicList[0]); // Prints "Hello"
    print(dynamicList[1]); // Prints "world"
    print(dynamicList.length); // Prints 2
    List preFilledDynamicList = [1, 2, 3];
    print(preFilledDynamicList[0]); // Prints 1
    print(preFilledDynamicList.length); // Prints 3
  }

  {
    List fixedList = List.filled(3, "World");
    fixedList.add("Hello"); // Error
    fixedList[0] = "Hello"; // Replace the value at index 0
    print(fixedList[0]); // Prints "Hello";
    print(fixedList[1]); // Prints "World";
  }

  {
    Map nameAgeMap = {}; // Create an empty Map
    nameAgeMap["Alice"] = 23; // Create a value of 23 on the ‘Alice’ key
    print(nameAgeMap["Alice"]); // Prints 23
    Map preFilledMap = {"Sarah": 1, "Alex": 2};
    print(preFilledMap["Sarah"]); // Prints 1
    print(preFilledMap.length); // Prints 2
    preFilledMap.remove("Alex");
    print(preFilledMap.length); // Prints 1
    print(preFilledMap["Alex"]); // Prints null
  }

  {
    String singleQuoteString = 'Here is a single quote string';
    String doubleQuoteString = "Here is a double quote string";
    String multiLineString = '''Here is a multi-line single
  quote string''';
    String str1 = 'Here is a ';
    String str2 = str1 + 'concatenated string';
    print(str2); // Prints Here is a concatenated string
    print(str2[0]); // Prints the single character 'H'
    String song = "Boro " * 3;
    print(song); // Prints "Boro Boro Boro "
  }

  {
    String someString = "Happy string";
    print("The string is: $someString"); // prints The string is: Happy string
    // No curly brackets were required
    print("The string length is: ${someString.length}");
    // prints The string length is: 16
    // Curly brackets were required
    print("The string length is: $someString.length");
    // prints The string length is: Happy string.length
    // Omitting the curly brackets meant only the variable was evaluated, not the method call on the variable.
  }

  {
    final String defaultLocation = "Staithes";
    const int defaultStars = 3;
  }

  {
    final defaultLocation = "Staithes"; // String type inferred from value
    const defaultStars = 3; // int type inferred from value
  }

  {
    int totalGoals = 2;
    totalGoals = totalGoals + 3; // Without shortcut
    totalGoals += 3; // With shortcut
    print("The goal total is: $totalGoals"); // Prints 8
  }

  {
    int homeGoals = 0;
    int totalGoals = ++homeGoals; // Increment homeGoals before totalGoals gets its value.
    print(homeGoals); // Prints 1
    print(totalGoals); // Prints 1

    homeGoals = 0;
    totalGoals = homeGoals++; // Increment homeGoals after totalGoals gets its value.
    print(homeGoals); // Prints 1
    print(totalGoals); // Prints 0
  }

  {
    final teamName = 'Boro';
    final professionalTeam = teamName == 'Boro';
    print(professionalTeam); // Prints true
    final goals = 53;
    final over60Goals = goals > 60;
    print(over60Goals); // Prints false
    final points = 96;
    final inPlayoffs = points > 65 && points < 85;
    print(inPlayoffs); // Prints false
    final leavingLeague = points < 35 || points >= 85;
    print(leavingLeague); // Prints true
  }

  {
    String winners = "Middlesbrough";
    if (winners == "Everton") {
      print("Everton win");
    } else if (winners == "Middlesbrough") {
      print("Middlesbrough win");
    } else {
      print("Draw");
    }
    // Prints Middlesbrough win
    if (winners == "Middlesbrough") print("Middlesbrough win again");
    // Prints Middlesbrough win again
  }

  {
    int counter = 0;
    while (counter < 2) {
      print(counter);
      counter++;
    }
    // Prints 0, 1
    do {
      print(counter);
      counter++;
    } while (counter < 2);
    // Prints 2
  }

  {
    for (int index = 0; index < 2; index++) {
      print(index);
    }
    // Prints 0, 1
  }

  {
    int counter = 0;
    while (counter < 10) {
      counter++;
      if (counter == 4) {
        break;
      } else if (counter == 2) {
        continue;
      }
      print(counter);
    }
    // Prints 1, 3
  }

  {
    String location = "Brighton";
    String coast;
    switch (location) {
      case "Whitby":
      case "Saltburn":
        coast = "North East";

      case "Brighton":
        coast = "South";
      default:
        coast = "Inland";
    }
    print(coast); // Prints South
  }

  {
    for (int i = 0; i < 10; i++) {
      String helloMessage = sayHello();
      print(helloMessage);
    }
  }

  {
    sayHappyBirthday("Laura", 21);
    var hello = sayHappyBirthday('Robert');
    print(hello); // Prints Happy birthday Robert! You are 21 years old.
  }

  {
    var finalScore = getFinalScore();
    var homeTeam = finalScore.$1;
    print(homeTeam); // Prints Middlesbrough
  }

  {
    var (homeTeam, homeScore, awayTeam, awayScore) = getFinalScore();
    print(homeTeam); // Prints Middlesbrough
  }

  {
    var helloFunction = sayHello;
    String helloMessage = helloFunction();
    print(helloMessage);
  }

  {
    List list = [1, 2, 3, 4];
    list.forEach((number) => print('hello $number'));
  }
}

String sayHello() {
  return "Hello world!";
}

sayHappyBirthday(String name, [int age = 21]) {
  return "Happy birthday $name! You are $age years old.";
}

(String, int, String, int) getFinalScore() {
  return ("Middlesbrough", 4, "Manchester City", 0);
}
