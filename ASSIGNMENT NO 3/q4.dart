// Implement a code that finds the factorial of a number using a while
// loop or for loop.

import 'dart:io';

void main() {
  print("Enter a number:");
  int input = int.parse(stdin.readLineSync()!);
  int fact = 1;
  int i = 1;
  while (i <= input) {
    fact *= i;
    i++;
  }
  print("factorial of $input is $fact");
}
