// Write a program that asks the user for their email and password. If the
// email and password match a predefined set of credentials, print "User
// login successful." Otherwise, keep asking for the email and password
// until the correct credentials are provided.

import 'dart:io';

void main() {
  var userEmail = "user@example.com";
  var userPassword = "12345678";

  stdout.write("Enter your Email: ");
  var email = stdin.readLineSync();
  stdout.write("Enter your Password: ");
  var password = stdin.readLineSync();

  if (email == userEmail && password == userPassword) {
    print("User Login Successfully");
  } else {
    print("Invalid username or password\nEnter again..");
    main();
  }
}
