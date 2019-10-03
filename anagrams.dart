import 'package:collection/collection.dart';

bool anagrams(String firstString, String secondString) {
  var firstCharList = firstString.toLowerCase().split('');
  var secondCharList = secondString.toLowerCase().split('');

  var firstMap = {};
  var secondMap = {};

  for (String char in firstCharList) {
    if (firstMap.containsKey(char)) {
      firstMap[char]++;
    } else {
      firstMap[char] = 1;
    }
  }

  for (String char in secondCharList) {
    if (secondMap.containsKey(char)) {
      secondMap[char]++;
    } else {
      secondMap[char] = 1;
    }
  }

  return MapEquality().equals(firstMap, secondMap);
}


main() {
  print(anagrams("fairy tales", "rail safety"));
}
