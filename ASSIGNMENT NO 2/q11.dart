//Q 11: Write a Dart code that takes in a list and an integer n as parameters. The function should return a new list containing the first n elements from the original list.

List<T> getFirstNElements<T>(List<T> inputList, int n) {
  if (n <= 0) {
    return [];
  }

  return inputList.sublist(0, n);
}

void main() {
  List<int> originalList = [11, 52, 83, 64, 5, 66, 17];
  int n = 3;

  List<int> firstNElements = getFirstNElements(originalList, n);

  print(firstNElements);
}
