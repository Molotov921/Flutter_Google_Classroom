/*Write a Dart program to Insert, Delete, Update and View operations on the elements in an array using menu-driven programming approach.*/
import 'dart:io';

void main() {
  List<int> array = [];

  while (true) {
    print("\nMenu:");
    print("1. Insert element");
    print("2. Delete element");
    print("3. Update element");
    print("4. View elements");
    print("5. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter element to insert:");
        int insertElement = int.parse(stdin.readLineSync()!);
        array.add(insertElement);
        break;

      case 2:
        print("Enter index of element to delete:");
        int deleteIndex = int.parse(stdin.readLineSync()!);
        if (deleteIndex >= 0 && deleteIndex < array.length) {
          array.removeAt(deleteIndex);
        } else {
          print("Invalid index.");
        }
        break;

      case 3:
        print("Enter index of element to update:");
        int updateIndex = int.parse(stdin.readLineSync()!);
        if (updateIndex >= 0 && updateIndex < array.length) {
          print("Enter new value:");
          int newValue = int.parse(stdin.readLineSync()!);
          array[updateIndex] = newValue;
        } else {
          print("Invalid index.");
        }
        break;

      case 4:
        print("Array elements:");
        print(array);
        break;

      case 5:
        print("Exiting program.");
        return;

      default:
        print("Invalid choice.");
        break;
    }
  }
}