// Write a program that counts the number of vowels in a given string
// using a for loop and if-else condition.

import 'dart:io';

void main() {
  stdout.write("Enter String to count the number of vowels: ");
  String string = stdin.readLineSync()!;
  int countVowel = 0;
  for (int i = 0; i < string.length; i++) {
    String letter = string[i];
    if (letter == "a" ||
        letter == "e" ||
        letter == "i" ||
        letter == "o" ||
        letter == "u") {
      countVowel++;
    }
  }
  print("The number of vowels in the string is: $countVowel");
}
