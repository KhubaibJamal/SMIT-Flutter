// Write a program that asks the user for their email and password. You
// are given a list of predefined user credentials (email and password
// combinations). If the entered email and password match any of the
// credentials in the list, print "User login successful." Otherwise, keep
// asking for the email and password until the correct credentials are
// provided.

import 'dart:io';

void main() {
  List<String> userEmails = [
    "user1@example.com",
    "user2@example.com",
    "user3@example.com",
    "user4@example.com"
  ];

  List<String> userPasswords = [
    "12345678",
    "97531246",
    "13572469",
    "87654321",
  ];
  int length = userEmails.length;

  stdout.write("Enter your Email: ");
  String email = stdin.readLineSync()!;
  stdout.write("Enter your Password: ");
  String password = stdin.readLineSync()!;

  for (var i = 0; i < length; i++) {
    if (email == userEmails[i] && password == userPasswords[i]) {
      print("User Login Successfully");
    } else {
      print("Invalid username or password\nEnter again..");
      main();
    }
  }
}
