/* 
Write a method that takes stockPrices and returns the best profit (positive or
negative) that could have been made from one purchase and one sale of one share of a stock.
*/

int getMaxProfit(List stockPrices) {
  if (stockPrices == null) return 0;
  if (stockPrices.length < 2) return 0;

  var minPrice = stockPrices[0];
  var maxProfit = stockPrices[1] - stockPrices[0];

  for (int i = 1; i < stockPrices.length; i++) {
    if (stockPrices[i] - minPrice > maxProfit) maxProfit = stockPrices[i] - minPrice;
    if (stockPrices[i] < minPrice) minPrice = stockPrices[i];
  }

  return maxProfit;
}

void main() {
  print(getMaxProfit([1, 5, 3, 2])); // 4
  print(getMaxProfit([7, 2, 8, 9])); // 7
  print(getMaxProfit([1, 6, 7, 9])); // 8
  print(getMaxProfit([9, 7, 4, 1])); // -2
  print(getMaxProfit([1, 1, 1, 1])); // 0
}