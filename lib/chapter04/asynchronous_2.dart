import 'dart:io';
import 'dart:async';

Future<void> longRunningOperation() async {
  for (int i = 0; i < 5; i++) {
    sleep(Duration(seconds: 1));
    print("Index: $i");
  }
}

main() {
  print("Start of long running operation");
  longRunningOperation();
  print("Continuing main body");
  for (int i = 10; i < 15; i++) {
    sleep(Duration(seconds: 1));
    print("Index from main: $i");
  }
  print("End of main");
}
