bool anagrams(String firstString, String secondString) {
  var firstCharMap = _buildCharMap(firstString);
  var secondCharMap = _buildCharMap(secondString);

  if (firstCharMap.keys.length != secondCharMap.keys.length) {
    return false;
  }

  for (String char in firstCharMap.keys) {
    if (firstCharMap[char] != secondCharMap[char]) {
      return false;
    }
  }

  return true;
}

Map _buildCharMap(String string) {
  var charMap = {};
  var charList = string.toLowerCase().split('');

  for (String char in charList) {
    if (charMap.containsKey(char)) {
      charMap[char]++;
    } else {
      charMap[char] = 1;
    }
  }

  return charMap;
}

main() {
  print(anagrams("fairy tales", "rail safety"));
}
