import 'dart:collection';
import 'package:collection/collection.dart';

Queue sortStack(Queue stack) {
  var minHeap = HeapPriorityQueue();
  var sortedStack = Queue();

  while (stack.isNotEmpty) {
    minHeap.add(stack.removeFirst());
  }

  while (minHeap.isNotEmpty) {
    sortedStack.add(minHeap.removeFirst());
  }

  return sortedStack;
}

main() {
  var stack = Queue();
  stack.addFirst(2);
  stack.addFirst(9);
  stack.addFirst(1);
  stack.addFirst(3);
  var sorted = sortStack(stack);
  sorted.removeFirst();
  print(sorted);
}
