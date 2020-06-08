import 'package:collection/collection.dart';
import 'dart:io';

int allocation(int budget, List prices) {
  var result = 0;

  var sortedPrices = HeapPriorityQueue((int a, int b) => a.compareTo(b));

  for (int price in prices) {
    sortedPrices.add(price);
  }

  while (budget >= sortedPrices.first) {
    budget -= sortedPrices.removeFirst();
    result++;
  }

  return result;
}

main() {
  var test = int.parse(stdin.readLineSync());
  var testCase = 0;

  while (test-- > 0) {
    testCase++;

    List input = stdin.readLineSync().split(' ');
    var budget = int.parse(input[1]);

    List strPrices = stdin.readLineSync().split(' ');
    var prices = [];
    for (String price in strPrices) {
      prices.add(int.parse(price));
    }

    stdout.write("\nCase #$testCase: ${allocation(budget, prices)}");
  }
}
