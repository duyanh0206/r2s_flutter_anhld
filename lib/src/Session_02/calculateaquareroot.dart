import 'dart:math';
import 'dart:io';

double calculateSquareRoot(double number) {
  if (number.isNaN) {
    throw Exception("Invalid input: Not a number.");
  }
  if (number < 0) {
    throw Exception("Square root of a negative number is not allowed.");
  }
  return sqrt(number);
}

void main() {
  double? number;

  while (true) {
    try {
      stdout.write('Enter a number: ');
      number = double.parse(stdin.readLineSync()!);
      double result = calculateSquareRoot(number);
      print('The square root of $number is $result');
      break;
    } catch (e) {
      print('Error: ${e.toString().replaceFirst("Exception: ", "")}');
    }
  }
}
