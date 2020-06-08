bool isPalindrome(String string) {
  if (isNullOrEmpty(string)) {
    return false;
  } else {
    var reversedHalfString = '';
    var charList = string.split('');
    for (var i = 0; i < charList.length ~/ 2; i++) {
      reversedHalfString = charList[i] + reversedHalfString;
    }
    return string.endsWith(reversedHalfString);
  }
}

bool isNullOrEmpty(String string) => string == null || string.isEmpty;

main() {
  print(isPalindrome('abvba'));
}
