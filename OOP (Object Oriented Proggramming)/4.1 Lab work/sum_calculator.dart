/*Write a Dart Program to illustrate the use of positional parameters by creating a function 
which returns the sum of passed parameters.*/
import 'dart:io';

double sum(double num1, double num2, double num3) {
  return num1 + num2 + num3;
}

void main() {
  print("Welcome to the Sum Calculator");
  
  double num1 = getNumber("Enter the first number: ");
  double num2 = getNumber("Enter the second number: ");
  double num3 = getNumber("Enter the third number: ");
  
  double result = sum(num1, num2, num3);
  print("The sum is: $result");
}

double getNumber(String message) {
  stdout.write(message);
  String input = stdin.readLineSync()!;
  return double.parse(input);
}
