int maxProfit(List list) {
  if (list.length <= 1) return 0;

  var profit = 0;

  for (var i = 0; i < list.length - 1; i++) {
    if (list[i] < list[i + 1]) {
      profit += list[i + 1] - list[i];
    }
  }

  return profit;
}

main() {
  print(maxProfit([7,1,5,3,6,4]));
  print(maxProfit([1,2,3,4,5]));
  print(maxProfit([7,6,4,3,1]));
}
