List duplicateZeros(List list) {
  int dups = 0;
  int length = list.length - 1;

  for (int i = 0; i <= length - dups; i++) {
    if (list[i] == 0) {
      if (i == length - dups) {
        list[length] = 0;
        length -= 1;
        break;
      }
      dups++;
    }
  }

  for (int i = length - dups; i >= 0; i--) {
    if (list[i] == 0) {
      list[i + dups] = 0;
      dups--;
      list[i + dups] = 0;
    } else {
      list[i + dups] = list[i];
    }
  }

  return list;
}

void main() {
  print(duplicateZeros([1, 0, 2, 0, 4]));
  print(duplicateZeros([1, 3, 0, 0, 0, 0]));
  print(duplicateZeros([1, 0, 2, 3, 0, 4, 5, 0]));
}
