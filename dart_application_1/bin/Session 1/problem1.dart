
import 'dart:io';

void main() {
  String grade;
  num salry, allowance, totalSalary;

  print("Enter your salary: ");
  salry = num.parse(stdin.readLineSync()!);

  print ("Enter your grade: ");
  grade = stdin.readLineSync()!;

  switch (grade) {
    case 'A':
      allowance = 300;
      break;
    case 'B':
      allowance = 250;
      break;
    default:
      allowance = 100;
      break;
  }
  totalSalary = salry + allowance;
  print("Total salary is: $totalSalary");
}



