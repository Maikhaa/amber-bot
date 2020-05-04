class Vertex {
  var data;
  var neighbours;

  Vertex(this.data) : neighbours = [];

  void add(Vertex node) {
    neighbours.add(node);
  }
}

List dfs(Vertex vertex, [Set visited]) {
  visited ??= {};
  visited.add(vertex);

  for (Vertex neighbour in vertex.neighbours) {
    if (!visited.contains(neighbour)) {
      dfs(neighbour, visited);
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

  zero.neighbours.add(one);
  zero.neighbours.add(two);
  zero.neighbours.add(three);

  one.neighbours.add(zero);

  two.neighbours.add(zero);
  two.neighbours.add(four);

  three.neighbours.add(zero);
  three.neighbours.add(four);

  four.neighbours.add(two);
  four.neighbours.add(three);
  four.neighbours.add(five);

  five.neighbours.add(four);

  var result = dfs(zero);

  for (Vertex item in result) {
    print(item.data);
  }
}
