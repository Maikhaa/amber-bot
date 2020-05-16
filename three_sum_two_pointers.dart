List threeSum(List list) {
  if (list == null || list.length < 3) return [];

  List results = [];
  list.sort();

  for (int i = 0; i < list.length - 2; i++) {
    if (i > 0 && list[i] == list[i - 1]) continue;

    var j = i + 1;
    var k = list.length - 1;

    while (j < k) {
      var toFind = -list[i];

      if (list[j] + list[k] == toFind) {
        results.add([list[i], list[j], list[k]]);
        while (j < k && list[j] == list[j + 1]) j++;
        while (j < k && list[k] == list[k - 1]) k--;
        k--;
        j++;
      }

      if (list[j] + list[k] < toFind) j++;
      if (list[j] + list[k] > toFind) k--;
    }
  }

  return results;
}

void main() {
  print(threeSum([-1, 0, 1, 2, -1, 4]));
  print(threeSum([-1, 4, 1, 2, -1, -3]));
}
