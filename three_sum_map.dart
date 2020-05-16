List threeSum(List list) {
  if (list == null || list.length < 3) return [];

  List results = [];
  list.sort();

  for (int i = 0; i < list.length; i++) {
    if (i > 0 && list[i] == list[i - 1]) continue;
    Map map = {};

    for (int j = i + 1; j < list.length; j++) {
      if (map.containsKey(list[j])) {
        results.add([list[i], map[list[j]], list[j]]);
        while (j < list.length - 1 && list[j] == list[j + 1]) j++;
      }
      map[-list[i] - list[j]] ??= list[j];
    }
  }

  return results;
}

void main() {
  print(threeSum([-1, 0, 1, 2, -1, 4]));
  print(threeSum([-1, 4, 1, 2, -1, -3]));
}
