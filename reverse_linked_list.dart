class Node {
  var val;
  Node next;

  Node(this.val, [this.next]);
}

Node createLinkedList(List list) {
  Node head;

  for (var i = 0; i < list.length; i++) {
    head = Node(list[i], head);
  }

  return head;
}

Node reverseLinkedList(Node node) {
  var previous;

  while (node != null) {
    var temp = node.next;
    node.next = previous;
    previous = node;
    node = temp;
  }

  return previous;
}

void main() {
  var head = createLinkedList([1, 2, 3, 4, 5]);
  print(head.val);
  var reversed = reverseLinkedList(head);
  print(reversed.val);
}
