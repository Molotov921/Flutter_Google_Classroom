/*Write a Dart program to perform multiplication of two user given numbers.*/
import 'dart:io';

void main() {
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  double product = num1 * num2;

  print("The product of $num1 and $num2 is: $product");
}