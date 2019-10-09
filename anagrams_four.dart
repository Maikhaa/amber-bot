import 'package:collection/collection.dart';

bool anagrams(String firstString, String secondString) {
  var firstSortedList = firstString.toLowerCase().split('')..sort();
  var secondSortedList = secondString.toLowerCase().split('')..sort();

  return ListEquality().equals(firstSortedList, secondSortedList);
}

main() {
  print(anagrams("fairy tales", "rail safety"));
}
