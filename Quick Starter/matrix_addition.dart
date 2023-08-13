/*Write a Dart program to addition of two matrices of dimension 3x3.*/
import 'dart:io';

void main() {
  List<List<int>> matrix1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  List<List<int>> matrix2 = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1],
  ];

  List<List<int>> result = List.generate(
    3,
    (i) => List.generate(3, (j) => matrix1[i][j] + matrix2[i][j]),
  );

  print("Matrix 1:");
  printMatrix(matrix1);

  print("\nMatrix 2:");
  printMatrix(matrix2);

  print("\nSum of matrices:");
  printMatrix(result);
}

void printMatrix(List<List<int>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      stdout.write("${matrix[i][j]} ");
    }
    print("");
  }
}