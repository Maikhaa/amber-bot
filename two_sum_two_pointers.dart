List twoSum(List list, int target) {
  if (list.length < 2 || list == null || target == null) return [];

  var i = 0;
  var j = list.length - 1;
  var result = [];

  while (i < j) {
    var sum = list[i] + list[j];

    if (sum == target) {
      result.add(i + 1);
      result.add(j + 1);
      return result;
    }

    if (sum > target) j--;
    if (sum < target) i++;
  }

  return result;
}

void main() {
  print(twoSum([2, 7, 11, 15], 9));
  print(twoSum([0, 1, 1, 2, 6], 3));
  print(twoSum([], 3));
}
