import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();

  List<int> numbers = List.generate(10, (_) => random.nextInt(100) + 1);
  print('Original List: $numbers');

  List<int> reversedNumbers = List.from(numbers.reversed);
  print('Reversed List: $reversedNumbers');


}






