/*Write a Dart program to find a user given number is even or odd.*/
import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}