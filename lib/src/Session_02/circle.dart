import 'dart:io';

void main() {

  void areaOfCircle() {
    print('Enter the radius of the circle: ');
    double radius = double.parse(stdin.readLineSync()!);
    print('The area of the circle is ${3.14 * radius * radius}');
  }
  void perimeterOfCircle() {
    print('Enter the radius of the circle: ');
    double radius = double.parse(stdin.readLineSync()!);
    print('The perimeter of the circle is ${2 * 3.14 * radius}');
  }

  while (true) {
    print('1. Claclulate the area of a circle');
    print('2. Calculate the perimeter of a circle');
    print('3. Exit');

    print('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        areaOfCircle();
        break;
      case 2:
        perimeterOfCircle();
        break;
      case 3:
        exit(0);
      default:
        print('Invalid choice');
    }
  }
}