void main() {
  List<int> numbers = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];
  List<int> primeNumbers = [];
  for (int number in numbers) {
    bool isPrime = true;
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primeNumbers.add(number);
    }
  }
  print(primeNumbers);
}
