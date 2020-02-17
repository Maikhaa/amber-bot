int findUnique(List list) {
  var map = {};

  for (int number in list) {
    if (map.containsKey(number)) {
      map.remove(number);
    } else {
      map[number] = 1;
    }
  }

  return map.keys.toList()[0];
}
