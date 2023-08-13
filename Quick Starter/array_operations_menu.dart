/*Write a Dart program to find below mentioned operations on the 3x3 array using menu-driven programming approach.
Perform below all mentioned by user choice:
• Sum of all elements
• Sum of specific Row
• Sum of specific Column
• Sum of diagonal elements
• Sum of antidiagonal elements
• Press 0 for exit.*/
import 'dart:io';

void main() {
  List<List<int>> array = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  
  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      print("Enter element for row $i, column $j:");
      array[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  while (true) {
    print("\nMenu:");
    print("1. Sum of all elements");
    print("2. Sum of specific Row");
    print("3. Sum of specific Column");
    print("4. Sum of diagonal elements");
    print("5. Sum of antidiagonal elements");
    print("0. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Sum of all elements: ${sumOfAllElements(array)}");
        break;

      case 2:
        print("Enter row number (0-2):");
        int row = int.parse(stdin.readLineSync()!);
        print("Sum of row $row: ${sumOfRow(array, row)}");
        break;

      case 3:
        print("Enter column number (0-2):");
        int column = int.parse(stdin.readLineSync()!);
        print("Sum of column $column: ${sumOfColumn(array, column)}");
        break;

      case 4:
        print("Sum of diagonal elements: ${sumOfDiagonal(array)}");
        break;

      case 5:
        print("Sum of antidiagonal elements: ${sumOfAntidiagonal(array)}");
        break;

      case 0:
        print("Exiting program.");
        return;

      default:
        print("Invalid choice.");
        break;
    }
  }
}

int sumOfAllElements(List<List<int>> array) {
  int sum = 0;
  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array[i].length; j++) {
      sum += array[i][j];
    }
  }
  return sum;
}

int sumOfRow(List<List<int>> array, int row) {
  int sum = 0;
  if (row >= 0 && row < array.length) {
    for (int j = 0; j < array[row].length; j++) {
      sum += array[row][j];
    }
  }
  return sum;
}

int sumOfColumn(List<List<int>> array, int column) {
  int sum = 0;
  if (column >= 0 && column < array[0].length) {
    for (int i = 0; i < array.length; i++) {
      sum += array[i][column];
    }
  }
  return sum;
}

int sumOfDiagonal(List<List<int>> array) {
  int sum = 0;
  for (int i = 0; i < array.length; i++) {
    sum += array[i][i];
  }
  return sum;
}

int sumOfAntidiagonal(List<List<int>> array) {
  int sum = 0;
  for (int i = 0; i < array.length; i++) {
    sum += array[i][array.length - i - 1];
  }
  return sum;
}