import 'dart:io';

void main() {
  print("Enter your GPA: ");
  num gpa = num.parse(stdin.readLineSync()!);
  String grade;

  if (gpa < 0 || gpa > 10) {
    print("Invalid GPA! Please enter a value between 0 and 10.");
    return;
  }

  if (gpa > 7.5 && gpa <= 10) {
    grade = "A";
  } else if (gpa > 6.0 && gpa <= 7.5) {
    grade = "B";
  } else if (gpa > 4.5 && gpa <= 6.0) {
    grade = "C";
  } else if (gpa > 3.5 && gpa <= 4.5) {
    grade = "D";
  } else {
    grade = "E";
  }

  print("Your grade is: $grade");
}
