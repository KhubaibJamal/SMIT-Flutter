// Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
// Number of classes held = 16,
// Number of classes attended = 10,
// and print percentage of class attended.
// Is student is allowed to sit in exam or not?

void main() {
  int classesHeld = 16;
  int classesAttended = 10;
  double attendedPercentage = (classesAttended / classesHeld) * 100;
  print("Attendance Percentage: $attendedPercentage%");
  if (attendedPercentage >= 75) {
    print("The student is ALLOWED to sit in the exam.");
  } else {
    print("The student is NOT ALLOWED to sit in the exam.");
  }
}
