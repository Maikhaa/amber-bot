bool containsDuplicates(List list) {
  if (list == null || list.isEmpty) return false;

  var map = {};

  for (int number in list) {
    if (map.containsKey(number)) {
      return true;
    } else {
      map[number] = 1;
    }
  }

  return false;
}

main() {
  print(containsDuplicates([1, 3, 4, 5, 1]));
}
