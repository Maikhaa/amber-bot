class Node {
  var data;
  var children;

  Node(this.data) : children = [];

  void add(Object data) {
    children.add(Node(data));
  }

  void remove(Object data) {
    Node node;
    for (Node child in children) {
      if (child.data == data) {
        node = child;
      }
    }
    children.remove(node);
  }
}

class Tree {
  Node root;

  void traverseBF(Function fun) {
    var list = [root];

    while (list.isNotEmpty) {
      var node = list.removeAt(0);

      for (Node child in node.children) {
        list.add(child);
      }

      fun(node);
    }
  }

  void traverseDF(Function fun, [Node node]) {
    node ??= root;

    fun(node);

    for (Node child in node.children) {
      traverseDF(fun, child);
    }
  }
}

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

  var tree = Tree();
  tree.root = node;

  tree.traverseBF((Node node) => print(node.data));
  print('------');
  tree.traverseDF((Node node) => print(node.data));
}
