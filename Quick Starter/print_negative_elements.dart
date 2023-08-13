/*Write a Dart program to print all negative elements in an array.*/
import 'dart:io';

void main() {
  List<int> array = [];

  print("Enter values (type 'done' to finish):");

  while (true) {
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') {
      break;
    }
    int value = int.parse(input);
    array.add(value);
  }

  List<int> negativeElements = [];

  for (int num in array) {
    if (num < 0) {
      negativeElements.add(num);
    }
  }

  print("\nNegative elements in the array:");

  print(negativeElements);
}