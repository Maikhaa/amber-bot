class Queue {
  List qList = [];

  void enq(Element element) {
    qList.add(element);
  }

  Element deq() {
    return qList.removeAt(0);
  }
}

class Element {
  int value;
  Element({this.value});
}

void main() {
  var q = Queue();
  var firstElement = Element(value: 8);
  var secondElement = Element(value: 2);

  q.enq(firstElement);
  q.enq(secondElement);

  print(q.deq().value);
}
