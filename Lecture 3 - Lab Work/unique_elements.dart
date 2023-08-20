/*Write a Dart Program to print all unique elements from a List.

Elements may be redundant  while entering into a List. User can only enter elements of String datatype.*/
import 'dart:io';

void main() {
  List<String> inputList = [];

  print("Enter elements (type 'exit' to stop):");
  while (true) {
    String input = stdin.readLineSync()??"0";
    if (input.toLowerCase() == 'exit') {
      break;
    }
    inputList.add(input);
  }

  List<String> uniqueElements = [];
  for (String element in inputList) {
    if (!uniqueElements.contains(element)) {
      uniqueElements.add(element);
    }
  }

  print("\nUnique Elements:");
  for (String element in uniqueElements) {
    print(element);
  }
}