List nextPermutation(List list) {
  if (list.isEmpty || list == null) return [];
  if (list.length == 1) return list;

  var i = list.length - 1;
  while (i >= 1 && list[i - 1] >= list[i]) i--;

  if (i != 0) {
    var j = list.length - 1;
    while (j >= 1 && list[j] <= list[i - 1]) j--;

    swap(i - 1, j, list);
    reverse(i, list);
  }

  if (i == 0) reverse(i, list);

  return list;
}

swap(int i, int j, List list) {
  var temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

reverse(int i, List list) {
  var j = list.length - 1;

  while (i < j) {
    var temp = list[i];
    list[i] = list[j];
    list[j] = temp;
    i++;
    j--;
  }
}

main() {
  print(nextPermutation([1, 2, 3]));
  print(nextPermutation([3, 2, 1]));
  print(nextPermutation([1, 1, 5]));
  print(nextPermutation([2, 1, 3, 2]));
  print(nextPermutation([1, 3, 2]));
  print(nextPermutation([2, 3, 1]));
  print(nextPermutation([1, 5, 1]));
  print(nextPermutation([1, 1]));
  print(nextPermutation([5, 1, 1]));
}
