bool orderChecker(List takeOutOrders, List dineInOrders, List servedOrders){
  if (takeOutOrders == null || dineInOrders == null
      || servedOrders == null) return false;
  if (servedOrders.isEmpty) return false;

  var j = 0;
  var k = 0;

  for (int i = 0; i < servedOrders.length; i++) {
    if (j < takeOutOrders.length
        && servedOrders[i] == takeOutOrders[j]) {
      j++;
    } else if (k < dineInOrders.length
        && servedOrders[i] == dineInOrders[k]) {
      k++;
    } else {
      return false;
    }
  }

  if (j == takeOutOrders.length && k == dineInOrders.length)return true;

  return false;
}


void main() {
  print(orderChecker([], [], [2, 3, 6])); // false
  print(orderChecker([1, 2, 3], [5, 6, 7], [1, 2, 3, 5, 6, 7])); // true
  print(orderChecker([1, 5], [2, 3, 6], [1, 2, 6, 3, 5])); //false
  print(orderChecker([], [2, 3, 6], [2, 3, 6])); // true
  print(orderChecker([1, 5], [2, 3, 6], [1, 6, 3, 5])); // false
  print(orderChecker([1, 9], [7, 8], [1, 7, 8])); // false
  print(orderChecker([55, 9], [7, 8], [1, 7, 8, 9])); // false
  print(orderChecker([27, 12, 18], [55, 31, 8], [55, 31, 8, 27, 12, 18])); // true
}
