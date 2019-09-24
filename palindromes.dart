bool isPalindrome(String string) {
  var reversedHalfString = '';
  var charList = string.split('');
  for (var i = 0; i < charList.length ~/ 2; i++) {
    reversedHalfString = charList[i] + reversedHalfString;
  }

  if (string.endsWith(reversedHalfString)) {
    return true;
  } else {
    return false;
  }
}

main() {
  print(isPalindrome('abucba'));
}
