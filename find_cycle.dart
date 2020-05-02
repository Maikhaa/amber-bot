bool validSchedule(int courses, List prerequisites) {
  Map graph = {};
  var valid = true;

  for (List edge in prerequisites) {
    graph[edge[0]] ??= [];
    graph[edge[0]].add(edge[1]);
  }

  bool dfs(int vertex, [Set visited]) {
    visited ??= {vertex};

    if (graph[vertex] != null) {
      for (int neighbour in graph[vertex]) {
        if (visited.contains(neighbour)) {
          valid = false;
        } else {
          visited.add(neighbour);
          dfs(neighbour, visited);
        }
      }
    }
  }

  dfs(graph.keys.toList()[0]);
  return valid;
}

main() {
  print(validSchedule(2, [
    [2, 3],
    [3, 7],
    [5, 8],
    [8, 3],
    [3, 5]
  ]));
}
