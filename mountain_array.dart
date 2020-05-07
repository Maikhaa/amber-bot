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

  if (up > 0 && down > 0) {
   return up + down == list.length - 1;
  }

  return false;
}

void main() {
  print(mountainArray([5, 4, 3, 5]));
  print(mountainArray([3, 5, 5]));
  print(mountainArray([0, 3, 2, 1]));
  print(mountainArray([0, 1, 2, 3]));
}
