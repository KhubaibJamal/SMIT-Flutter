// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'student.dart';

var email = "";
var pass = "";

void main() {
  Entry();
}

Entry() {
  print("\t\t\t\t\t************Welcome************");
  print("\t\t\t\t\t  Student Management System ");
  while (true) {
    print("Press 1 for Login As a Student");
    String choice = stdin.readLineSync()!;
    if (choice == '1') {
      login();
    } else {
      print("Please Enter valid key to login");
    }
  }
}

login() {
  // int i;
  List<Map> login = [
    {"email": "khubaibJamal", "pass": "khubaib11"},
    {"email": "HamzaIqbal", "pass": "Hamza11"},
  ];

  while (true) {
    print("Enter your Email");
    email = stdin.readLineSync()!;
    print("Enter your Password");
    pass = stdin.readLineSync()!;

    for (var val in login) {
      if (val['email'] == email && val['pass'] == pass) {
        print("Successfully Login");
        Student();
      }
    }
  }
}
