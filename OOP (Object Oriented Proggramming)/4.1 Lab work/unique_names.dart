/*Write a Dart Program to create a function as expression which returns unique list of names by passing a list of names to that 
function.*/
void main() {
  List<String> names = ["Neel", "Raj", "Pranav", "Harsh", "Manav", "Neel"];
  List<String> uniqueNames = getUniqueNames(names);
  
  print("Original list of names: $names");
  print("List of unique names: $uniqueNames");
}

List<String> getUniqueNames(List<String> names) {
  Set<String> uniqueSet = Set<String>.from(names);
  List<String> uniqueList = uniqueSet.toList();
  return uniqueList;
}
