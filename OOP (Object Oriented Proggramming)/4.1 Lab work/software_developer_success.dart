/*Write a Dart Program to create a function which accepts marks of 3 to 5 occupations and returns a percentage of success to gain a new job as a software developer 
(using optional parameters).*/
import 'dart:io';

double calculateSuccessPercentage({
  double occupation1 = 0,
  double occupation2 = 0,
  double occupation3 = 0,
  double occupation4 = 0,
  double occupation5 = 0,
}) {
  
  double averageMarks = (occupation1 + occupation2 + occupation3 + occupation4 + occupation5) / 5;

  double successPercentage = (averageMarks / 100) * 100;
  return successPercentage;
}

void main() {
  print("Welcome to the Software Developer Success Calculator");
  double marks1 = getOccupationMarks(1);
  double marks2 = getOccupationMarks(2);
  double marks3 = getOccupationMarks(3);
  double marks4 = getOccupationMarks(4);
  double marks5 = getOccupationMarks(5);

  double percentage = calculateSuccessPercentage(
    occupation1: marks1,
    occupation2: marks2,
    occupation3: marks3,
    occupation4: marks4,
    occupation5: marks5,
  );

  print("Your success percentage as a software developer: $percentage%");
}

double getOccupationMarks(int occupationNumber) {
  stdout.write("Enter marks for occupation $occupationNumber: ");
  String input = stdin.readLineSync()!;
  return double.parse(input);
}
