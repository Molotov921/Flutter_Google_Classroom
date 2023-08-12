/*Write a Dart program to create a list which contains all Indian states.
Add all indian states in list by user input.
After that print all states using any type of loop.*/
import 'dart:io';

void main() {
  List<String> indianStates = [];

  print("Enter Indian states (type 'done' to finish):");
  
  while (true) {
    String state = stdin.readLineSync()!;
    if (state.toLowerCase() == 'done') {
      break;
    }
    indianStates.add(state);
  }

  print("\nIndian states:");
  for (String state in indianStates) {
    print(state);
  }
}