/*Write a Dart Program to create a function which returns a cube of given number.*/
import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  String input = stdin.readLineSync()!;

  int number = int.parse(input);
  int cubeResult = calculateCube(number);

  print("The cube of $number is $cubeResult");
}

int calculateCube(int num) {
  int cube = num * num * num;
  return cube;
}
