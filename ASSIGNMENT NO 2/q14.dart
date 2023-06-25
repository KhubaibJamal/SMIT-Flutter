//Q.14: Write a Dart function named sortList that takes in a list of integers and returns a new list with the elements sorted in ascending order. The original list should remain unchanged.

List<int> sortList(List<int> inputList) {
  List<int> sortedList =
      List.from(inputList); // Create a copy of the input list
  sortedList.sort(); // Sort the list in ascending order
  return sortedList;
}

void main() {
  List<int> originalList = [11, 52, 83, 64, 5, 66, 17];

  List<int> sortedList = sortList(originalList);

  print("\nThe Orginal List is: $originalList");
  print("\nThe Sorted List is: $sortedList \n");
}
