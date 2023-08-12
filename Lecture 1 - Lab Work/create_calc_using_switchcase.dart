/*Write a Dart program to create a calculator using switch case.*/
import 'dart:io';

void main() {
  print("Simple Calculator");

  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter an operator (+, -, *, /):");
  String operator = stdin.readLineSync()!;

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Cannot divide by zero.");
        return;
      }
      break;
    default:
      print("Invalid operator.");
      return;
  }

  print("Result: $result");
}