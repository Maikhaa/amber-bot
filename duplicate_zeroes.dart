List duplicateZeroes(List list) {
    var count = 0;

    for (int i = 0; i < list.length - 1; i++) {
        if (list[i] == 0) count++;
    }

    for (int j = list.length - 1; j >= 0; j--) {
      list[j] = list[j - count];

      if (list[j] == 0) {
        list[j - 1] = 0;
        j = j - 1;
        count--;
      }
    }

    return list;
}



void main() {
  print(duplicateZeroes([1,0,2,3,0,4,5,0]));
}
