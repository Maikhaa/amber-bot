String findMaxChar(String string) {
  if (_isNullOrEmpty(string)) {
    return '';
  } else {
    var charList = string.split('');
    var aMap = {};
    var maxValue = 0;
    var maxChar = '';
    for (String char in charList) {
      if (aMap.containsKey(char)) {
        aMap[char]++;
        if (aMap[char] > maxValue) {
          maxValue = aMap[char];
          maxChar = char;
        }
      } else {
        aMap[char] = 1;
      }
    }
    return maxChar;
  }
}

bool _isNullOrEmpty(String string) => string == null || string.isEmpty;

main() {
  print(findMaxChar('ccccv'));
}
