/*Write a Dart program to concate list element value with hello.
For example,
input: [1, 2, 3]
output: [1 hello, 2 hello, 3 hello]*/
void main() {
  List<int> numbers = [1, 2, 3];
  List<String> concatenatedList = [];

  for (int number in numbers) {
    String concatenated = "$number hello";
    concatenatedList.add(concatenated);
  }

  print(concatenatedList);
}
                    //if you want to go with user input values so here is the code for it.

// import 'dart:io';

// void main() {
//   List<int> numbers = [];

//   print("Enter three numbers:");
//   for (int i = 0; i < 3; i++) {
//     int number = int.parse(stdin.readLineSync()!);
//     numbers.add(number);
//   }

//   List<String> concatenatedList = [];

//   for (int number in numbers) {
//     String concatenated = "$number hello";
//     concatenatedList.add(concatenated);
//   }

//   print("Concatenated list: $concatenatedList");
// }