/*Write a Dart program to print multiplication table of user given number.*/
import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  print("Multiplication table of $number:");

  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print("$number * $i = $result");
  }
}