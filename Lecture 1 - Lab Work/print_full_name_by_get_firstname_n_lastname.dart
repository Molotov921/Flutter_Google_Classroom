/*Write a Dart program to print full name by getting first name and last name by user input.*/
import 'dart:io';

void main() {
  print("Enter your first name:");
  String firstName = stdin.readLineSync()!;

  print("Enter your last name:");
  String lastName = stdin.readLineSync()!;

  String fullName = "$firstName $lastName";

  print("Your full name is: $fullName");
}