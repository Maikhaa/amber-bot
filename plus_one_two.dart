List plusOne(List list) {
  for (int i = list.length - 1; i >= 0; i--) {
    if (list[i] < 9) {
      list[i]++;
      return list;
    }

    list[i] = 0;
  }

  list.insert(0, 1);
  return list;
}

main() {
  print(plusOne([9, 9, 9, 9]));
  print(plusOne([3, 4, 9, 9]));
}
