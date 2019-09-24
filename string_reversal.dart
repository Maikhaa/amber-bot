String reverse(String string) {
  if (isNullOrEmpty(string)) {
    throw 'Invalid input';
  } else {
    var reversedString = '';
    var charList = string.split('');
    for (String char in charList) {
      reversedString = char + reversedString;
    }
    return reversedString;
  }
}

bool isNullOrEmpty(String string) => string == null || string.isEmpty;

main() {
  print(reverse('hola'));
}
