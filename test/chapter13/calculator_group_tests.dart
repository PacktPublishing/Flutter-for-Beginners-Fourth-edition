import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/chapter13/calculator_success.dart';

void main() {
  late CalculatorSuccess calculator;
  setUp(() {
    calculator = CalculatorSuccess();
  });
  group("calculator tests", () {
    test(
      'sumTwoNumbers() sum both numbers',
      () => expect(calculator.sumTwoNumbers(1, 2), 3),
    );
    test(
      'sumTwoNumbers() sum negative number',
      // Note that this assertion is deliberately incorrect
      () => expect(calculator.sumTwoNumbers(1, -1), 1),
    );
  });
}
