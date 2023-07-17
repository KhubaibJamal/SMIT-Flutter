// Write a program that takes a list of numbers as input and prints the
// even numbers in the list using a for loop.

import 'dart:io';

void main() {
  List<int> number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print("Prime number from 0 to 1");
  for (var i = 0; i < number.length; i++) {
    if (number[i] % 2 == 0) {
      stdout.write(number[i]);
      stdout.write(" ");
    }
  }
}
