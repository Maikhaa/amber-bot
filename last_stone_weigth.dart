
import 'package:collection/collection.dart';

int lastStoneWeigth(List list) {
  var maxHeap = HeapPriorityQueue((int a, int b) => b.compareTo(a));

  for (int number in list) {
    maxHeap.add(number);
  }

  while (maxHeap.length > 1) {
    var first = maxHeap.removeFirst();
    var second = maxHeap.removeFirst();

    if (first > second) {
      maxHeap.add(first - second);
    }

    if (second > first) {
      maxHeap.add(second - first);
    }
  }

  return maxHeap.removeFirst();
}

main() {
  print(lastStoneWeigth([2, 7, 4, 1, 8, 1]));
}
