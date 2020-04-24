import 'dart:collection';

Queue sortStack(Queue stackOne) {
  var stackTwo = Queue();
  var temp = stackOne.removeFirst();

  while (stackOne.isNotEmpty) {
    if (stackTwo.isEmpty || temp < stackTwo.first) {
      stackTwo.addFirst(temp);
      temp = stackOne.removeFirst();
    }

    if (temp > stackTwo.first) {
      stackOne.addFirst(stackTwo.removeFirst());
    }
  }

  stackTwo.addFirst(temp);
  return stackTwo;
}

main() {
  var stack = Queue();
  stack.addFirst(2);
  stack.addFirst(9);
  stack.addFirst(1);
  stack.addFirst(3);
  var sorted = sortStack(stack);
  print(sorted);
}
