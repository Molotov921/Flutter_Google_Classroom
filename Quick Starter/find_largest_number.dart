/*Write a Dart program to find largest number in an array.*/
import 'dart:io';

void main() {
  List<int> array = [];

  print("Enter the number of elements:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print("Enter element ${i + 1}:");
    int element = int.parse(stdin.readLineSync()!);
    array.add(element);
  }

  int largest = array[0];

  for (int num in array) {
    if (num > largest) {
      largest = num;
    }
  }

  print("The largest number in the array is: $largest");
}