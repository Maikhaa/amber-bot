import 'dart:collection';

class ListEntry<int> extends LinkedListEntry<ListEntry<int>> {
  int val;
  ListEntry(this.val);
}

ListEntry createLinkedList(List list) {
  var node;
  var linkedList = LinkedList<ListEntry>();

  for (var i = 0; i < list.length - 1; i++) {
    node = ListEntry(list[i]);
    linkedList.add(node);
    node.insertAfter(ListEntry(list[i + 1]));
  }

  return linkedList.elementAt(0);
}

ListEntry findMiddleNode(ListEntry node) {
  var slow = node;
  var fast = node;

  while (fast != null) {
    slow = slow.next;
    fast = fast.next.next;
  }

  return slow;
}

void main() {
  var head = createLinkedList([1, 2, 3, 4, 5]);
  var node = findMiddleNode(head);

  print("middle node ${node.val}");
}
