import 'dart:math';

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

Node randomNode(Node node) {
  var count = 0;
  var map = {};

  while (node != null) {
    map[count] = node;
    node = node.next;
    count++;
  }

  var random = Random();
  var nextInt = random.nextInt(count);

  return map[nextInt];
}

void main() {
  var head = createLinkedList([1, 2, 3, 4, 5]);
  print(head.val);
  var random = randomNode(head);
  print(random.val);
}
