bool mountainArray(List list) {
  if (list.length < 3) return false;

  var up = 0;
  var down = 0;
  var index = 0;

  while (index < list.length - 1 && list[index] < list[index + 1]) {
    up++;
    index++;
  }

  while (index < list.length - 1 && list[index] > list[index + 1]) {
    down++;
    index++;
  }

  return up + down == list.length - 1;
}

void main() {
  print(mountainArray([5, 4, 3, 5]));
  print(mountainArray([3, 5, 5]));
  print(mountainArray([0, 3, 2, 1]));
}
