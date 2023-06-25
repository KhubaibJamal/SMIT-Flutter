// Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.

void main() {
  List<int> numbers = [11, 56, 25, 35, 12, 20];
  int maximum = numbers.reduce((a, b) => a > b ? a : b);
  print("Maximum value: $maximum");
}
