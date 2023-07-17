// Implement a function that checks if a given string is a palindrome.

void main() {
  String palindrome = "rececar";
  int length = palindrome.length;
  int flag = 0;
  if (palindrome.isEmpty) {
    print("palindrome");
  } else {
    for (var i = 0; i < length / 2; i++) {
      if (palindrome[i] != palindrome[length - 1 - i]) {
        flag++;
      }
    }
  }
  if (flag == 0) {
    print("$palindrome is not palindrome");
  } else {
    print("$palindrome is palindrome");
  }
}
