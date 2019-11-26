class Stack {
  List list = [];

  void push(Object element) {
    list.add(element);
  }

  Object pop() {
    if (list.length == 0) {
      throw 'Empty Stack';
    }
    return list.removeLast();
  }

  Object peek() {
    if (list.length == 0) {
      return null;
    }
    return list[list.length - 1];
  }
}

class Queue {
  Stack firstStack = Stack();
  Stack secondStack = Stack();

  void add(Object element) {
    firstStack.push(element);
  }

  Object remove() {
    while (firstStack.peek() != null) {
      secondStack.push(firstStack.pop());
    }

    var element = secondStack.pop();

    while (secondStack.peek() != null) {
      firstStack.push(secondStack.pop());
    }

    return element;
  }

  Object peek() {
    while (firstStack.peek() != null) {
      secondStack.push(firstStack.pop());
    }

    var element = secondStack.peek();

    while (secondStack.peek() != null) {
      firstStack.push(secondStack.pop());
    }

    return element;
  }
}

void main() {
  var q = Queue();
  q.add(3);
  q.add(6);
  q.add(8);
  print(q.remove());
  print(q.remove());
}
