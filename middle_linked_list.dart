class Node {
  var val;
  Node next;

  Node(this.val, [this.next]);
}

Node createLinkedList(List list) {
  Node head;

  for (int i = list.length - 1; i >= 0; i--) {
    head = Node(list[i], head);
  }

  return head;
}

int findMiddle(Node node) {
  var length = 0;

  while (node.next != null) {
    length++;
    node = node.next;
  }

  return length % 2 == 0 ? length ~/ 2 : length ~/ 2 + 1;
}

Node findMiddleNode(Node node, int middle) {
  var counter = 0;

    while (node.next != null && counter < middle) {
      counter++;
      node = node.next;
  }

  return node;
}

void main() {
  print('hola');
  var head = createLinkedList([1, 2, 3, 4, 5]);
  var middle = findMiddle(head);
  print("head ${head.val}");
  var node = findMiddleNode(head, middle);
  print(node.val);
}
