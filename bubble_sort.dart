List bubbleSort(List list) {
  for (var i = 0; i < list.length; i++) {

    for (var j = 0; j < list.length - i - 1; j++) {
      // 0 < 3 - 0 -> 0
      // 1 < 3 - 0 -> 1
      // 2 < 3 - 0 -> 2

      if (list[j] > list[j + 1]) {
        var greater = list[j];
        list[j] = list[j + 1];
        list[j + 1] = greater;
      }
    }

  }
 return list;
}

main() {
  print(bubbleSort([3, 8, 1, -15]));
}
