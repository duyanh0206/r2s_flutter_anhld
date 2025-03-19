  import 'dart:io';

  int factorial(int n) {
    if (n == 0) {
      return 1;
    } else {
      return n * factorial(n - 1);
    }
  }
  void main() {
    print('Enter a number: ');
    int number = int.parse(stdin.readLineSync()!);
    print('The factorial of $number is ${factorial(number)}');
  }


