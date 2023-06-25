//Q.12: Write a Dart code that takes in a list of strings and returns a new list with the elements in reverse order. The original list should remain unchanged.

List<String> reverseList(List<String> inputList) {
  List<String> reversedList = List.from(inputList.reversed);
  return reversedList;
}

void main() {
  List<String> originalList = ['Khubaib', 'Jamal', 'Sohaib'];

  List<String> reversedList = reverseList(originalList);

  print("\nThe Orginal List is: $originalList");
  print("\nThe Reversed List is: $reversedList \n");
}
