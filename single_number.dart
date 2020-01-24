int findUnique(List list) {
  if (list == null || list.isEmpty) return null;

  var map = {};
  var unique;

  for (int number in list) {
    if (map[number] == null) {
      map[number] = 1;
    } else {
      map[number]++;
    }
  }

  for (int number in map.keys) {
    if (map[number] == 1) {
      unique = number;
    }
  }

  return unique;
}

main() {
  print(findUnique([3, 3, 2, 8, 2]));
}
