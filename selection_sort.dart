List selectionSort(List list) {
  for (var i = 0; i < list.length; i++) {
    for (var j = i + 1; j < list.length; j++) {
      if (list[j] < list[i]) {
        var temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }
  }
  return list;
}

main() {
  print(selectionSort([3, 20, 1, 8, -15, 4]));
}
