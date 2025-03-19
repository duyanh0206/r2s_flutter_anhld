import 'dart:io';

void main() {
    print("Enter the number of elements (1-100): ");
    int n = int.parse(stdin.readLineSync()!);

    if (n <= 0 || n > 100) {
      print("Invalid number of elements");
      return;
    }
    // Create a list of n elements
    List<int> numbers = [];
    for (int i = 0; i < n; i++) {
      stdout.write("Enter element ${i + 1}: ");
      numbers.add(int.parse(stdin.readLineSync()!));
    }

    print("You entered: $numbers");

    // Remove an element
    print("Enter the element to remove: ");
    numbers = numbers.toSet().toList();
    print(numbers);
  }



