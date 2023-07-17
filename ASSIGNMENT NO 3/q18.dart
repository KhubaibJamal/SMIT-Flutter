// Write a program that takes a list of numbers as input and prints the
// numbers greater than 5 using a for loop and if-else condition.

import 'dart:io';

void main() {
  stdout.write("Enter how many numbers want to add in list: ");
  int number = int.parse(stdin.readLineSync()!);
  List<int> list = [];
  print("Insert element in list:");
  for (int i = 0; i < number; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }
  print("Number greater than 5 are: ");
  for (int i = 0; i < list.length; i++) {
    if (list[i] > 5) {
      stdout.write("${list[i]}, ");
    }
  }
}
