void main() {
  List<int> list = [1, 2, 3, -4, -5, -6, 7, 8, 9, 10];

  int sumOfNegativeNumbers = 0;
  int countOfNegativeNumbers = 0;
  for (int number in list) {
    if (number < 0) {
      sumOfNegativeNumbers += number;
      countOfNegativeNumbers += 1;
    }
  }
  if (countOfNegativeNumbers == 0) {
    print("There are no negative numbers in the list");
  } else {
    print(
        "The average of all the negative numbers: ${sumOfNegativeNumbers / countOfNegativeNumbers}");
  }
}
