import 'dart:io';

import 'main.dart';

Map<String, List> students = {
  "khubaibJamal": [
    265,
    "khubaib@gmail.com",
    {
      "courses": ["DSA", "Networking", "Compiler"],
      "attendance": ["72%", "85%", "92%"],
    },
    {
      "currentCourses": ["DSA", "Networking", "Compiler"],
      "status": ["In Prog", "In Prog", "In Prog"]
    },
    {
      "previousCourses": ["OOP", "Cloud_Computing", "Artifical Intelligence"],
      "status": ["Pass", "Pass", "Pass"]
    },
    {
      "previous": ["OOP", "Cloud_Computing", "Artifical Intelligence"],
      "GPA": ["3.00", "3.66", "4.00"],
      "total": ["9", "10.98", '12'],
    },
  ],
  "HamzaIqbal": [
    8,
    "hamza@gmail.com",
    {
      "courses": ["Operating System", "DSA", "Compiler"],
      "attendance": ["96%", "65%", "72%"],
    },
    {
      "currentCourses": ["Operating System", "DSA", "Compiler"],
      "status": ["In Prog", "In Prog", "In Prog"]
    },
    {
      "previousCourses": [
        "Artifical Intelligence",
        "Software Engineering",
        "Numerical Anaylsis "
      ],
      "status": ["Pass", "Pass", "Pass"]
    },
    {
      "previous": [
        "Artifical Intelligence",
        "Software Engineering",
        "Numerical Anaylsis "
      ],
      "GPA": ["3.00", "3.33", "3.66"],
      "total": ["9", "9.99", '10.98'],
    },
  ],
};

Student() {
  String option;

  print("Student Management System ");
  while (true) {
    print("\t\tPress 1 to View Courses");
    print("\t\tPress 2 to Assessment Result");
    print("\t\tPress 3 to View Attendance");
    print("\t\tPress 4 to View Student Information");
    print("\t\tPress 5 to EXIT");
    option = stdin.readLineSync()!;

    if (option == '1') {
      viewCourses();
    } else if (option == '2') {
      assessmentResult();
    } else if (option == '3') {
      viewAttendance();
    } else if (option == '4') {
      viewStudentDetails();
    } else if (option == '5') {
      Entry();
    } else {
      print("Please Enter the Valid key");
    }
  }
}

viewCourses() {
  print("Press 1 to view all courses");
  print("Press 2 for Current Courses");
  print("Press 3 for Previos Courses");
  var choose = stdin.readLineSync()!;
  CurrentCourses() {
    print("\nCurrent Courses");

    if (students.containsKey(email)) {
      List? value = students[email];
      Map data = value![3];
      List<String> courses = data["currentCourses"];
      List<String> Status = data["status"];
      print("Courses \t\t\t Status");
      for (int i = 0; i < courses.length; i++) {
        print(' ${courses[i]}\t\t ${Status[i]}');
        print('--------------------------');
      }
    }
  }

  PreviousCourses() {
    print("\nPrevious Courses");

    if (students.containsKey(email)) {
      List? value = students[email];
      Map data = value?[4];

      List<String> courses = data["previousCourses"];
      List<String> Status = data["status"];

      print("Courses \t\t\t Status");
      for (int i = 0; i < courses.length; i++) {
        print(' ${courses[i]}\t\t ${Status[i]}');
        print('--------------------------');
      }
    }
  }

  if (choose == '1') {
    CurrentCourses();
    PreviousCourses();
  } else if (choose == '2') {
    CurrentCourses();
  } else if (choose == '3') {
    PreviousCourses();
  }
}

assessmentResult() {
  if (students.containsKey(email)) {
    List? value = students[email];
    Map data = value?[5];
    List<String> courses = data["previous"];
    List<String> GPA = data["GPA"];
    // List<String> total = data["total"];
    print(" Courses\t\t\t GPA");
    for (int i = 0; i < courses.length; i++) {
      print(' ${courses[i]} \t\t ${GPA[i]}');
      print('--------------------------');
    }
  }
}

void viewAttendance() {
  if (students.containsKey(email)) {
    List? value = students[email];

    Map courseData = value?[2];
    List<String> courses = courseData["courses"];
    List<String> attendance = courseData["attendance"];

    for (int i = 0; i < courses.length; i++) {
      print('Course: ${courses[i]}');
      print('Attendance: ${attendance[i]}');
      print('--------------------------');
    }
  }
}

void viewStudentDetails() {
  print("-------------------------------");
  if (students.containsKey(email)) {
    List? value = students[email];

    print('Name: $email');
    print('ID: ${value?[0]}');
    print('Email: ${value?[1]}');

    Map courseData = value?[2];
    List<String> courses = courseData["courses"];
    List<String> attendance = courseData["attendance"];
    print("Courses\t\t\tAttendance");
    for (int i = 0; i < courses.length; i++) {
      print('${courses[i]}\t\t${attendance[i]}');
    }
  }
}
