bool validSchedule(List pre) {
  Map graph = {};
  Set visited = {};

  for (List edge in pre) {
    graph[edge[0]] ??= [];
    graph[edge[0]].add(edge[1]);
  }

  bool visit(vertex) {
    visited.add(vertex);

    if (graph[vertex] != null) {
      for (int neighbour in graph[vertex]) {
        if (visited.contains(neighbour) || visit(neighbour)) return true;
      }
    }

    visited.remove(vertex);
    return false;
  }

  for (int key in graph.keys) {
    if (visit(key) == true) return false;
  }

  return true;
}

main() {
  print(validSchedule([
    [1, 3],
    [3, 4],
    [4, 2],
    [2, 1],
    [2, 5]
  ]));
  print(validSchedule([
    [1, 3],
    [3, 4],
    [2, 1],
    [2, 5]
  ]));
}
