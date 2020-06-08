import 'dart:math';

int containerWithMostWater(List list) {
  if (list == null || list.length < 2) return 0;

  var i = 0;
  var j = list.length - 1;
  var maxArea = 0;

  while (i < j) {
    var lowest = min<int>(list[i], list[j]);
    var dist = j - i;
    var area = lowest * dist;

    if (area > maxArea) maxArea = area;

    if (list[i] < list[j]) {
      i++;
    } else if (list[i] == list[j]) {
      list[i + 1] > list[j - 1] ? i++ : j--;
    } else {
      j--;
    }
  }

  return maxArea;
}

main() {
  print(containerWithMostWater([1,8,6,2,5,4,8,3,7]));
}
