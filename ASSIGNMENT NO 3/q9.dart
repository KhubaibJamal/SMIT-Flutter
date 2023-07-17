// Write a program to display the cube of the number up to an integer.

import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Input number of terms: ");
  int cube = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= cube; i++) {
    print("Cube of $i is: ${pow(i, 3)}");
  }
}
