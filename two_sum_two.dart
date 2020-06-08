List twoSum(List list, int target) {
  if (list == null || list.isEmpty) return [];
  if (target == null) return [];

  Map map = {};
  var result = [];

  for (int i = 0; i < list.length; i++) {
    if (map.containsKey(list[i])) {
      result.add(i);
      result.add(map[list[i]]);
    }

    map[target - list[i]] = i;
  }

  return result;
}

main() {
  print(twoSum([2, 7, 11, 15], 9));
}
