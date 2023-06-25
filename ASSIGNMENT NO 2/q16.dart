//Q.16: Implement a Dart function named getEvenNumbers that uses the where() method to filter out odd numbers from a list of integers. The function should take in the original list as a parameter and return a new list containing only the even numbers.

List<int> getEvenNumbers(List<int> inputList) {
  List<int> evenNumbers = inputList.where((number) => number % 2 == 0).toList();
  return evenNumbers;
}

void main() {
  List<int> originalList = [5, 2, 8, 3, 1, 7, 6, 4];

  List<int> evenNumbers = getEvenNumbers(originalList);

  print("\nThe Orginal List is: $originalList");
  print("\nThe Positive List is: $evenNumbers");
  evenNumbers.sort();
  print("\nThe Sorted Positive List is: $evenNumbers \n");
}
