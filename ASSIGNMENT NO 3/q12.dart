//   Write a program to make such a pattern like a right angle triangle with
// a number which will repeat a number in a row.
// The pattern like :
// 1
// 22
// 333
// 4444

import 'dart:io';

void main() {
  int count = 0;

  for (var i = 0; i < 5; i++) {
    for (var j = 1; j < i + 1; j++) {
      stdout.write("$count");
    }
    print(" ");
    count++;
  }
}
