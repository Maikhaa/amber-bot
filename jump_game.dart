bool jumpGame(List list) {
  if (list == null || list.isEmpty) return false;

  var getToIndex = list.length - 1;

  for (int i = list.length - 1; i >= 0; i--) {
    if (i + list[i] >= getToIndex) getToIndex = i;
  }

  return getToIndex == 0;
}

void main() {
  print(jumpGame([3, 2, 4, 1, 0]));
  print(jumpGame([3, 2, 1, 0, 4]));
}
