// Write a program to make such a pattern as a pyramid with an asterisk.
//    *
//   * *
//  * * *
// * * * *

import 'dart:io';

void main() {
  int row = 5;
  var space = " ";
  for (var i = 1; i < row; i++) {
    stdout.write("${space * (row - i)}");
    for (var j = 1; j <= i; j++) {
      stdout.write("* ");
    }
    print(" ");
  }
}
