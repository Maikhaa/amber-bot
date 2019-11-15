bool anagrams(String aString, String bString) {
  var aCharList = aString.toLowerCase().split('');
  var bCharList = bString.toLowerCase().split('');

  var aCharMap = createMap(aCharList);
  var bCharMap = createMap(bCharList);

  if (aCharMap.length != bCharMap.length) {
    return false;
  }

  for (String char in aCharMap.keys) {
    if (aCharMap[char] != bCharMap[char]) {
      return false;
    }
  }

  return true;
}

Map createMap(List<String> charList) {
  var charMap = {};

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
  print(anagrams("fairy tales", "rail safetyk"));
}
