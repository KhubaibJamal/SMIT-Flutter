// Implement a code that finds the largest element in a list using a for
// loop.

void main() {
  List<int> list = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int largest = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] > largest) {
      largest = list[i];
    }
  }
  print("Largest element in list: $largest");
}
