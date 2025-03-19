import 'dart:io';
import 'dart:math';

void main() {

  num areaOfCircle({ required num radius }) {
    return pi * radius * radius;
  }
  num perimeterOfCircle( num radius) {
    return 2 * pi * radius;
  }

  while (true) {
    print('1. Claclulate the area of a circle');
    print('2. Calculate the perimeter of a circle');
    print('3. Exit');

    print('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Enter the radius of the circle: ');
        num radius = num.parse(stdin.readLineSync()!);
        print('The area of the circle is ${areaOfCircle(radius: radius)}');
        print('The perimeter of the circle is ${perimeterOfCircle(radius)}');
        break;
      case 2:
        print('Enter the radius of the circle: ');
        num radius = num.parse(stdin.readLineSync()!);
        print('The perimeter of the circle is ${perimeterOfCircle(radius)}');
        print('The area of the circle is ${areaOfCircle(radius: radius)}');
        break;
      case 3:
        exit(0);
      default:
        print('Invalid choice');
    }
  }
}