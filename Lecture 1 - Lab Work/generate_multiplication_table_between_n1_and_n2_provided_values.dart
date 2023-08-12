/*Write a Dart program to generates multiplication tables between n1 and n2 provided values.*/
import 'dart:io';

void main() {
  print("Enter the starting value (n1):");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Enter the ending value (n2):");
  int n2 = int.parse(stdin.readLineSync()!);

  print("Multiplication tables between $n1 and $n2:");

  for (int i = n1; i <= n2; i++) {
    print("\nMultiplication table of $i:");
    for (int j = 1; j <= 10; j++) {
      int result = i * j;
      print("$i * $j = $result");
    }
  }
}