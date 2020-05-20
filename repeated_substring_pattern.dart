bool repeatedSubstring(String str) {
  for (int i = str.length ~/ 2; i >= 1; i--) {
    if (str.length % i == 0) {
      var subString = str.substring(0, i);
      var repeats = str.length ~/ i;

      var resultString = '';
      while (repeats > 0) {
        resultString += subString;
        repeats--;
      }

      if (resultString == str) return true;
    }
  }

  return false;
}

void main() {
  print(repeatedSubstring("abab"));
  print(repeatedSubstring("aba"));
  print(repeatedSubstring("bbb"));
}
