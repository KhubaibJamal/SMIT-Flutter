// Q.6: Write a program to check whether an alphabet is a vowel or consonant.
void main() {
  String alphabet = 'E';
// If alphabet is in capital letter. alphabet = alphabet.toLowerCase();
  if (alphabet == 'a' ||
      alphabet == 'e' ||
      alphabet == 'i' ||
      alphabet == 'o' ||
      alphabet == 'u') {
    print('$alphabet is a vowel.');
  } else {
    print('$alphabet is a consonant.');
  }
}
