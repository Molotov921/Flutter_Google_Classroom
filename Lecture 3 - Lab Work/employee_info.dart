/*Write a Dart Program to get an print total three employs information using user input an
Map datatype(use Map Entry class)

Take low mention attributes for on
employee:
id
name
age
salary*/
import 'dart:io';

void main() {
  List<MapEntry<int, Map<String, dynamic>>> employees = [];

  for (int i = 1; i <= 3; i++) {
    print("Enter details for Employee $i:");

    print("ID:");
    int id = int.parse(stdin.readLineSync()!);

    print("Name:");
    String name = stdin.readLineSync()!;

    print("Age:");
    int age = int.parse(stdin.readLineSync()!);

    print("Salary:");
    double salary = double.parse(stdin.readLineSync()!);

    Map<String, dynamic> employeeDetails = {
      "id": id,
      "name": name,
      "age": age,
      "salary": salary,
    };

    employees.add(MapEntry(id, employeeDetails));
  }

  print("\nEmployee Details:");
  for (var entry in employees) {
    print("Employee ID: ${entry.key}");
    print("Details: ${entry.value}");
    print("---------------------------------------------------------");
  }
}