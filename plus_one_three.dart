List plusOne(List list) {
  if (list == null || list.isEmpty) return [];

  for (int i = list.length - 1; i >= 0; i--) {
    if (list[i] < 9) {
      list[i] = list[i] + 1;
      return list;
    } else {
      list[i] = 0;
    }

    if (i == 0) {
      list.insert(0, 1);
      return list;
    }
  }
}

main() {
  print(plusOne([2, 3, 5]));
  print(plusOne([9, 9, 9]));
}
