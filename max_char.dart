String findMaxChar(String string) {
  if (_isNullOrEmpty(string)) {
    throw 'Invalid input';
  } else {
    var aMap = {};
    var maxVal = 0;
    var maxChar = '';

    var charList = string.split('');
    for (String char in charList) {
      if (aMap.containsKey(char)) {
        aMap[char]++;
      } else {
        aMap[char] = 1;
      }
    }

    aMap.forEach((k, v) {
      if (v > maxVal) {
        maxVal = v;
        maxChar = k;
      }
    });

    return maxChar;
  }
}

bool _isNullOrEmpty(String string) => string == null || string.isEmpty;

main() {
  print(findMaxChar('hhmhhmmmmmmmmm'));
}
