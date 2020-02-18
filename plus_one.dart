List plusOne(List list, [int index]) {
  index ??= list.length - 1;
  list[index]++;

  if (list[index] == 10 && index != 0) {
    list[index] = 0;
    plusOne(list, index - 1);
  }

  if (list[index] == 10 && index == 0) {
    list[index] = 0;
    list.insert(0, 1);
  }

  return list;
}

main() {
  print(plusOne([9, 9, 9, 9]));
  print(plusOne([3, 4, 9, 9]));
}
