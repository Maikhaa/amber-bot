import 'dart:collection';

class Node {
  var data;
  var children;

  Node(this.data) : children = [];

  void add(Object data) {
    children.add(Node(data));
  }
}

List bfs(Node node) {
  var result = [node];
  var queue = Queue();
  queue.add(node);

  while (queue.isNotEmpty) {
    node = queue.removeFirst();

    if (node.children.isNotEmpty) {
      for (Node child in node.children) {
        result.add(child);
        queue.addLast(child);
      }
    }
  }

  return result;
}

void main() {
  var root = Node(1);
  root.add(2);
  root.add(3);
  root.children[0].add(4);
  root.children[0].add(5);
  root.children[1].add(6);
  root.children[1].add(7);
  root.children[0].children[0].add(8);
  root.children[0].children[0].add(9);
  root.children[1].children[1].add(10);

  var result = bfs(root);

  for (Node item in result) {
    print(item.data);
  }
}
