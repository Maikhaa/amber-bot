class Node {
  Object data;
  Node next;

  Node(this.data, [this.next]);
}

class LinkedList {
  Node head;

  void insertFirst(Object data) {
    head = Node(data, head);
  }

  int size() {
    int size = 0;
    Node node = head;

    while (node != null) {
      size++;
      node = node.next;
    }

    return size;
  }

  Node getFirst() {
    return head;
  }

  Node getLast() {
    if (head == null) {
      return null;
    }

    Node node = head;
    Node result;

    while (node != null) {
      result = node;
      node = node.next;
    }

    return result;
  }

  void removeFirst() {
    if (head == null) {
      return null;
    }

    head = head.next;
  }

  void removeLast() {
    if (head == null) {
      throw 'Empty list';
    }

    if (head.next == null) {
      head = null;
    }

    Node previous = head;
    Node node = head.next;

    while (node.next != null) {
      previous = node;
      node = node.next;
    }

    previous.next = null;
  }

  void insertLast(Object data) {
    Node node = getLast();
    if (node != null) {
      node.next = Node(data);
    } else {
      head = Node(data);
    }
  }

  Node getAt(int index) {
    Node node = head;
    int counter = 0;

    while (node != null) {
      if (counter == index) {
        return node;
      }

      counter++;
      node = node.next;
    }

    return null;
  }

  void removeAt(int index) {
    if (head == null) {
      return;
    }

    if (index == 0) {
      head = head.next;
      return;
    }

    Node previous = getAt(index - 1);
    Node node = getAt(index);

    if (previous != null && node != null) {
      previous.next = node.next;
    }
  }

  void insertAt(Object data, int index) {
    if (head == null) {
      head = Node(data);
      return;
    }

    if (index == 0) {
      insertFirst(data);
      return;
    }

    Node node = getAt(index);

    if (node == null) {
      insertLast(data);
      return;
    }

    Node previous = getAt(index - 1);

    previous.next = Node(data, node);
  }

  void forEach(Function function) {
    Node node = head;
    int index = 0;

    while (node != null) {
      node.data = function(node, index);
      node = node.next;
      index++;
    }
  }
}

Node midpoint(LinkedList linkedList) {
  Node slow = linkedList.head;
  Node fast = linkedList.head;

  while (fast.next != null && fast.next.next != null) {
   slow = slow.next;
   fast = fast.next.next;
  }

  return slow;
}

bool circular(LinkedList list) {
  Node slow = list.head;
  Node fast = list.head;

  while (fast.next != null && fast.next.next != null) {
    slow = slow.next;
    fast = fast.next.next;

    if (slow == fast) {
      return true;
    }
  }

  return false;
}

Node fromLast(LinkedList list, int index) {
  Node fast = list.head;
  Node slow = list.head;

  while (index > 0) {
    fast = fast.next;
    index--;
  }

  while (fast.next != null) {
    slow = slow.next;
    fast = fast.next;
  }

  return slow;
}

void main() {
  LinkedList lList = LinkedList();
  lList.insertFirst(4);
  lList.insertFirst(3);
  lList.insertFirst('hi');
  lList.insertFirst(1);
  lList.insertFirst(0);
  print(fromLast(lList, 2).data);
}
