int maxSubarray(List list) {
  if (list.length == 1) return list[0];
  
  var maxSum = list[0];
  var arrSum = list[0];

  for (int i = 1; i < list.length; i++) {
    if (arrSum + list[i] > list[i]) {
      arrSum += list[i];
    } else {
      arrSum = list[i];
    }

    if (arrSum > maxSum) maxSum = arrSum;
  }

  return maxSum;
}

main() {
  print(maxSubarray([-2, 1, -3, 4, -1, 2, 1, -5, 4]));
}
