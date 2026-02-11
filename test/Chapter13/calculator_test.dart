import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/Chapter13/calculator_fail.dart';
import 'package:hello_world/Chapter13/calculator_success.dart';

void main() {
  late CalculatorFail calculatorFail;
  late CalculatorSuccess calculatorSuccess;
  setUp(() {
    calculatorFail = CalculatorFail();
    calculatorSuccess = CalculatorSuccess();
  });
  test(
    'calculator_fail.sumTwoNumbers() sum both numbers',
    () => expect(calculatorFail.sumTwoNumbers(1, 2), 3),
  );

  test(
    'calculator_success.sumTwoNumbers() sum both numbers',
    () => expect(calculatorSuccess.sumTwoNumbers(1, 2), 3),
  );

  test(
    'sumTwoNumbers() sum negative number',
    () => expect(calculatorSuccess.sumTwoNumbers(1, -1), 1),
  );
}
