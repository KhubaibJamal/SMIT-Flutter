// Implement a code that checks whether a given number is prime or not.
// Example:

import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (var i = 2; i < number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print("Enter a number:");
  int input = int.parse(stdin.readLineSync()!);
  if (isPrime(input)) {
    print("$input is prime number");
  } else {
    print("$input is not prime number");
  }
}
