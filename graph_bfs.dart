import 'dart:collection';

class Node {
  var data;
  var vertices;
  var visited;

  Node(this.data)
      : vertices = [],
        visited = false;

  void add(Node node) {
    vertices.add(node);
  }
}

List bfs(Node node) {
  var result = [];
  var queue = Queue();

  result.add(node);
  queue.add(node);

  while (queue.isNotEmpty) {
    node = queue.removeFirst();

    if (node.vertices.isNotEmpty) {
      for (Node vertex in node.vertices) {
        if (vertex.visited == false) {
          result.add(vertex);
          queue.addLast(vertex);
          vertex.visited = true;
        }
      }
    }
  }

  return result.toList();
}

void main() {
  var cero = Node(0);
  var one = Node(1);
  var two = Node(2);
  var three = Node(3);
  var four = Node(4);
  var five = Node(5);

  cero.vertices.add(one);
  cero.vertices.add(two);
  cero.vertices.add(three);
  two.vertices.add(four);
  three.vertices.add(four);
  four.vertices.add(five);

  var result = bfs(cero);

  for (Node item in result) {
    print(item.data);
  }
}
