List twoSum(List list, int target) {
  if (list.isEmpty || list == null) return [];
  if (target == null) return [];

  var i = 0;
  var j = list.length - 1;
  var result = [];

  while (i < j) {
    while (list[i] + list[j] > target) j--;
    while (list[i] + list[j] < target) i++;

    if (list[i] + list[j] == target) {
      result.add(i);
      result.add(j);
      return result;
    }
  }

  return result;
}

main() {
  print(twoSum([2, 7, 11, 15], 9));
}
