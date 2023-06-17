// Q9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.

void main() {
  int number = 16;
  if (number % 2 == 0) {
// The number is even print("$number is even."); // check divisible by 5
    if (number % 5 == 0) {
      print("$number is divisible by 5.");
    } else {
      print("$number is not divisible by 5.");
    }
  } else {
// The number is odd print("$number is odd.");
// check divisible by 7
    if (number % 7 == 0) {
      print("$number is divisible by 7.");
    } else {
      print("$number is not divisible by 7.");
    }
  }
}
