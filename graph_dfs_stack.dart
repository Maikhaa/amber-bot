import 'dart:collection';

class Vertex {
  var data;
  var vertices;

  Vertex(this.data) : vertices = [];

  void add(Vertex node) {
    vertices.add(node);
  }
}

List dfs(Vertex vertex) {
  List visited = [];
  var stack = Queue();

  stack.addFirst(vertex);

  while (stack.isNotEmpty) {
    vertex = stack.removeFirst();

    if (!visited.contains(vertex)) {
        visited.add(vertex);
        for (Vertex vertex in vertex.vertices) {
          stack.addFirst(vertex);
        }
    }
  }

  return visited;
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

  one.vertices.add(zero);

  two.vertices.add(zero);
  two.vertices.add(four);

  three.vertices.add(zero);
  three.vertices.add(four);

  four.vertices.add(two);
  four.vertices.add(three);
  four.vertices.add(five);

  five.vertices.add(four);

  var result = dfs(five);

  for (Vertex item in result) {
    print(item.data);
  }
}
