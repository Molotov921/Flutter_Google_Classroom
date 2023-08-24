/*Write a Dart Program to make a simple calculator functionality by creating various different functions with switch case.*/
import 'dart:io';

void main() {
  print("Simple Calculator");
  double num1 = getNumber("Enter the first number: ");
  double num2 = getNumber("Enter the second number: ");
  
  print("Select operation:");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");
  
  stdout.write("Enter operation number: ");
  int operation = int.parse(stdin.readLineSync()!);
  
  double result = calculate(num1, num2, operation);
  print("Result: $result");
}

double getNumber(String message) {
  stdout.write(message);
  String input = stdin.readLineSync()!;
  return double.parse(input);
}

double calculate(double num1, double num2, int operation) {
  double result = 0.0;
  switch (operation) {
    case 1:
      result = num1 + num2;
      break;
    case 2:
      result = num1 - num2;
      break;
    case 3:
      result = num1 * num2;
      break;
    case 4:
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero is not allowed.");
        exit(0);
      }
      break;
    default:
      print("Error: Invalid operation number.");
      exit(0);
  }
  return result;
}
