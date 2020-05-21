List nextPermutation(List list) {
  if (list.isEmpty || list == null) return [];

  for (int i = list.length - 1; i >= 1; i--) {
    if (list[i] > list[i - 1]) {
      var temp = list[i];
      list[i] = list[i - 1];
      list[i - 1] = temp;
      return list;
    }
  }

  var i = 0;
  var j = list.length - 1;

  while (i < j) {
    var temp = list[i];
    list[i] = list[j];
    list[j] = temp;
    i++;
    j--;
  }

  return list;
}

main() {
  print(nextPermutation([1, 2, 3]));
  print(nextPermutation([3, 2, 1]));
  print(nextPermutation([1, 1, 5]));
}
