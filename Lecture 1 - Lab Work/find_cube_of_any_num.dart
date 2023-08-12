/*Write a Dart program to find a cube of any number.*/
import 'dart:io';

void main() {
  print("Enter a number:");
  double number = double.parse(stdin.readLineSync()!);

  double cube = number * number * number;

  print("The cube of $number is: $cube");
}