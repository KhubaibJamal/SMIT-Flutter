// Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

void main() {
  List<int> numbers = [11, 56, 25, 35, 12, 20];

  int greatest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);

  print('Greatest number: $greatest');
  print('Smallest number: $smallest');
}
