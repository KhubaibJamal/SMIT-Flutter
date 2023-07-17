// Write a program that prints the Fibonacci sequence up to a given
// number using a for loop.

import 'dart:io';

void main() {
  int num1 = 0;
  int num2 = 1;
  int sum = 0;
  print("Enter number: ");
  int input = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= input; i++) {
    if (i == 1) {
      stdout.write(num1);
      stdout.write(" ");
      continue;
    }
    if (i == 2) {
      stdout.write(num2);
      stdout.write(" ");
      continue;
    }
    sum = num1 + num2;
    num1 = num2;
    num2 = sum;
    stdout.write(sum);
    stdout.write(" ");
  }
}
