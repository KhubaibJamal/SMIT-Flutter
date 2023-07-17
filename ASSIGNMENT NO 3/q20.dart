// Implement a code that finds the maximum and minimum elements in a
// list using a for loop and if-else condition.

void main() {
  List<int> list = [10, 4, 2, 9, 7, 5, 1, 3, 6, 8];
  int max = list[0];
  int min = list[0];
  for (int i = 1; i < list.length; i++) {
    if (list[i] > max) {
      max = list[i];
    } else if (list[i] < min) {
      min = list[i];
    }
  }
  print("The maximum element is $max");
  print("The minimum element is $min");
}
