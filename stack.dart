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
      throw 'Empty Stack';
    }
    return list[list.length - 1];
  }
}

void main() {
  var s = Stack();
  s.push(1);
  s.push(2);
  s.push("Hi");
  s.push("There");
  print(s.pop());
  print(s.pop());
  print(s.pop());
  print(s.pop());
  print(s.pop());
}
