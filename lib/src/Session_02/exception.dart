import 'dart:io';

void main () {
  int age = 0;
  bool isValid = false;

  do {
    try {
      print('Enter your age: ');
      age = int.parse(stdin.readLineSync()!);
      isValid = true;
    } catch (e) {
      print('Invalid input. Please enter a valid number');
    }
  } while (!isValid);
  print('Your age is $age');
}



