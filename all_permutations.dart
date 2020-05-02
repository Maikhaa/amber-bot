List per(List list) {
  var result = [];
  var current = [];

  for (int r = 0; r < list.length; r++) {
    current = [list[r]];
    for (int c = list.length - 1; c >= 0; c--) {
      if (list[r] != list[c]) {
        current.add(list[c]);
      }
    }
    result.add(current);
  }

  for (int r = list.length - 1; r >= 0 ; r--) {
    current = [list[r]];
    for (int c = 0; c < list.length; c++) {
      if (list[r] != list[c]) {
        current.add(list[c]);
      }
    }
    result.add(current);
  }

  return result;
}

main() {
  print(per([1, 2, 3]));
}
