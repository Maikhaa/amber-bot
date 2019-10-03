import 'package:collection/collection.dart';

bool anagrams(String firstString, String secondString) {
  var firstMap = _createMap(firstString);
  var secondMap = _createMap(firstString);

  return MapEquality().equals(firstMap, secondMap);
}

Map _createMap(String string) {
  var charList = string.toLowerCase().split('');
  var resultMap = {};

  for (String char in charList) {
    if (resultMap.containsKey(char)) {
      resultMap[char]++;
    } else {
      resultMap[char] = 1;
    }
  }

  return resultMap;
}


main() {
  print(anagrams("fairy tales", "rail safety"));
}
