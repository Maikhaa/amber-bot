bool isPalindrome(String string) {
  var reversedHalfString = '';
  var charList = string.split('');
  for (var i = 0; i < charList.length ~/ 2; i++) {
    reversedHalfString = charList[i] + reversedHalfString;
  }
  return string.endsWith(reversedHalfString);
}

main() {
  print(isPalindrome('abvba'));
}
