import 'dart:collection';

class Vertex {
  var data;
  var vertices;

  Vertex(this.data) : vertices = [];

  void add(Vertex vertex) {
    vertices.add(vertex);
  }
}

List bfs(Vertex vertex) {
  Set visited = {};
  var queue = Queue();

  visited.add(vertex);
  queue.add(vertex);

  while (queue.isNotEmpty) {
    vertex = queue.removeFirst();

    for (Vertex vertex in vertex.vertices) {
      visited.add(vertex);
      queue.addLast(vertex);
    }
  }

  return visited.toList();
}

void main() {
  var zero = Vertex(0);
  var one = Vertex(1);
  var two = Vertex(2);
  var three = Vertex(3);
  var four = Vertex(4);
  var five = Vertex(5);

  zero.vertices.add(one);
  zero.vertices.add(two);
  zero.vertices.add(three);
  two.vertices.add(four);
  three.vertices.add(four);
  four.vertices.add(five);

  var result = bfs(zero);

  for (Vertex item in result) {
    print(item.data);
  }
}
