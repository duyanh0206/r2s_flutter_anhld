import 'dart:io';

void validateAge(int age) {
  if (age < 0) {
    throw RangeError("Age cannot be negative.");
  }
  if (age <1 || age < 18) {
    throw Exception("User is underage.");
  }
}

void main() {
  int age;
  bool isValid = false;

  do {
    try {
      stdout.write('Enter your age: ');
      age = int.parse(stdin.readLineSync()!);
      validateAge(age);
      isValid = true;
    } on FormatException {
      // Handle the exception
      print('Invalid input: Age must be an integer.');
    } on RangeError catch (e) {
      // Handle the exception
      print('Error: ${e.message}');
    } on Exception catch (e) {
      // Handle the exception
      print('Error: ${e.toString().replaceFirst("Exception: ", "")}');
    }
  } while (!isValid);

  print('Access granted.');
}
