int maxSubArray(List list) {
  var max = 0;
  var globalMax = 0;

  for (int i = 0; i < list.length; i++) {
    if (list[i] > max) {
      max = list[i];
    } else {
      max = max + list[i];
    }

    if (max > globalMax) {
      globalMax = max;
    }
  }

  return globalMax;
}

main() {
  print(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]));
}
