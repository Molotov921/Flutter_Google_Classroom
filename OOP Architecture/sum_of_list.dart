/*WAP to take a list using named parameter and return sum of all elements of list.*/
int sumOfList({required List<int> numbers}) {
  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }
  return sum;
}

void main() {
  List<int> myList = [5, 10, 15, 20, 25];
  int totalSum = sumOfList(numbers: myList);
  print("The sum of all elements in the list is: $totalSum");
}
