class Node {
  var data;
  var children;

  Node(this.data) : children = [];

  void add(Object data) {
    children.add(Node(data));
  }
}

List widthList(Node root) {
  var result = [0];
  var queue = [root, null];

  while (queue.length > 1) {
    var node = queue.removeAt(0);

    if (node == null) {
      queue.add(null);
      result.add(0);
    } else {
      result[result.length - 1]++;

      for (Node child in node.children) {
        queue.add(child);
      }
    }
  }

  return result;
}

// 1
// 2    3     4
// 567  8910
//       11

main() {
  var node = Node(1);

  node.add(2);
  node.add(3);
  node.add(4);
  node.children[0].add(5);
  node.children[0].add(6);
  node.children[0].add(7);
  node.children[1].add(8);
  node.children[1].add(9);
  node.children[1].add(10);
  node.children[1].children[1].add(11);

  print(widthList(node));
}
