// Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
// i.e: Percentage should be rounded upto 2 decimal places only.

void main() {
  String studentName = 'Khubaib Jamal';
  int rollNumber = 1001;
  String className = 'Grade 14';
  int oppMarks = 80;
  int dsaMarks = 90;
  int introToInformationMarks = 75;
  int automateMarks = 85;
  int compilerConstructorMarks = 95;
  int totalMarksObtained = oppMarks +
      dsaMarks +
      introToInformationMarks +
      automateMarks +
      compilerConstructorMarks;
  int totalSubjects = 5;
  double percentage = (totalMarksObtained / (totalSubjects * 100)) * 100;
  percentage = double.parse(percentage.toStringAsFixed(2));
  String grade;
  if (percentage >= 90) {
    grade = 'A+';
  } else if (percentage >= 80) {
    grade = 'A';
  } else if (percentage >= 70) {
    grade = 'B';
  } else if (percentage >= 60) {
    grade = 'C';
  } else if (percentage >= 50) {
    grade = 'D';
  } else {
    grade = 'F';
  }
  print('Student Name: $studentName');
  print('Roll Number: $rollNumber');
  print('Class: $className');
  print('Percentage: $percentage%');
  print('Grade Obtained: $grade');
}
