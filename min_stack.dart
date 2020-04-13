import 'dart:collection';

class Node {
  int val;
  int min;

  Node(this.val, this.min);
}

class MinStack {
  var stack = ListQueue();
  int min;

  void push(int number) {
    min ??= number;
    number < min ? min = number : min = min;
    stack.addFirst(Node(number, min));
  }

  void pop() {
    stack.removeFirst();
  }

  int top() {
    return stack.removeFirst().val;
  }

  int getMin() {
    return stack.removeFirst().min;
  }
}

main() {
  MinStack minStack = new MinStack();
  minStack.push(-2);
  minStack.push(0);
  minStack.push(-3);
  print(minStack.getMin());
  print(minStack.top());
  print(minStack.getMin());
}
