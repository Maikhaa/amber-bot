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
}

void main() {
  LinkedList lList = LinkedList();
  lList.insertLast(3);
  lList.insertFirst(2);
  lList.insertFirst(1);
  lList.insertFirst('cero');
  lList.insertAt(800, 0);
  print(lList.getAt(0).data);
  print(lList.getAt(1).data);
  print(lList.getAt(2).data);
  print(lList.getAt(4).data);
}
