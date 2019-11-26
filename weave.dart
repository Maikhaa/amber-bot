class Queue {
  List list = [];

  void enq(Object element) {
    list.add(element);
  }

  Object deq() {
    return list.removeAt(0);
  }

  Object peek() {
    if (list.length == 0) {
      return null;
    }
    return list[0];
  }
}

Queue weave(Queue firstQ, Queue secondQ) {
  Queue thirdQ = Queue();

  while (firstQ.peek() != null || secondQ.peek() != null) {
    if (firstQ.peek() != null) {
      thirdQ.enq(firstQ.deq());
    }
    if (secondQ.peek() != null) {
      thirdQ.enq(secondQ.deq());
    }
  }

  return thirdQ;
}

void main() {
  var firstQ = Queue();
  firstQ.enq(1);
  firstQ.enq(2);

  var secondQ = Queue();
  secondQ.enq("Hi");
  secondQ.enq("There");

  var result = weave(firstQ, secondQ);
  print(result.list[0]);
  print(result.list[1]);
  print(result.list[2]);
  print(result.list[3]);
}
