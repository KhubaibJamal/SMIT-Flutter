// Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

void main() {
  Map<String, String> phone = {
    "khubaib": "322",
    "yaqoob": "67368293744",
    "hammad": "789",
    "sohaib": "09823476802",
  };
  Iterable<String> keysWithLength4 = phone.keys.where((key) => key.length == 4);
  print('Keys with length 4 in the phone book:');
  print(keysWithLength4);
}
