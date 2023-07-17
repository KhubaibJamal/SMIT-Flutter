// Write a program that prints the multiplication table of a given number
// using a for loop.

import 'dart:io';

void main() {
  print("insert number for multiplication table");
  int table = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= 10; i++) {
    print("$table * $i = ${i * table}");
  }
}
