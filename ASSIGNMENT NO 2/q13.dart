//Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.

List<int> getUniqueElements(List<int> inputList) {
  Set<int> uniqueSet = Set<int>.from(inputList);
  List<int> uniqueList = uniqueSet.toList();
  return uniqueList;
}

void main() {
  List<int> originalList = [11, 52, 83, 64, 5, 66, 17, 17, 52, 5];

  List<int> uniqueElements = getUniqueElements(originalList);

  print("\nThe Orginal List is: $originalList");
  print("\nThe Unique Elemenbts is: $uniqueElements \n");
}
