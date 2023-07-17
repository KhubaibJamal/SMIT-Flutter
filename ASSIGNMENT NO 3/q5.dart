// Write a program that calculates the sum of all the digits in a given
// number using a while loop.

void main() {
  int number = 12345;
  int sum = 0;
  int digits;

  while (number > 0) {
    digits = number % 10;
    sum += digits;
    number = number ~/ 10;
  }
  print(sum);
}
