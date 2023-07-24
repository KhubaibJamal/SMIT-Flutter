import 'dart:io';

import 'student.dart';

var email = "";
var pass = "";

void main() {
  Entry();
}

Entry() {
  print("\t\t\t\t\t************Welcome*********");
  print("\t\t\t\t\t  Student Management System ");

  while (true) {
    print("Press 1 for Login As a Student");
    bool validChoice = false;
    String choice = stdin.readLineSync()!;
    if (choice == '1') {
      validChoice = true;
      login();
    }

    if (!validChoice) {
      print("Please Enter a valid key to login");
    }
  }
}

login() {
  List<Map<String, String>> login = [
    {"email": "khubaibJamal", "pass": "khubaib11"},
    {"email": "HamzaIqbal", "pass": "Hamza11"},
  ];

  bool isLoggedIn = false;

  while (!isLoggedIn) {
    print("Enter your Email");
    email = stdin.readLineSync()!;
    print("Enter your Password");
    pass = stdin.readLineSync()!;

    for (var val in login) {
      if (val['email'] == email && val['pass'] == pass) {
        isLoggedIn = true;
        print("Successfully Logged in");
        Student();
        break;
      }
    }

    if (!isLoggedIn) {
      print("Invalid credentials. Please try again.");
    }
  }
}
