import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();

  List<int> numbers = List.generate(8, (_) => random.nextInt(100) + 1);
  print(numbers);

  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  print("Sum of numbers: $sum");

  int average = sum ~/ numbers.length;
  print("Average of numbers: $average");


}






