String reverse(String string) {
  var reversedString = '';
  var charList = string.split('');
  for (String char in charList) {
    reversedString = char + reversedString;
  }
  return reversedString;
}

main() {
  print(reverse('hola'));
}
