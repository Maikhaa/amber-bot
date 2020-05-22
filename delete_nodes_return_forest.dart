import 'dart:collection';

class TreeNode {
  int val;
  TreeNode left;
  TreeNode right;

  TreeNode(this.val, [this.left, this.right]);
}

TreeNode createTree(List list) {
  var queue = Queue();
  var treeNode = TreeNode(list[0]);

  queue.add(treeNode);

  var i = 1;
  while (i < list.length - 1 && queue.isNotEmpty) {
    var node = queue.removeFirst();

    node.left = TreeNode(list[i++]);
    queue.add(node.left);

    node.right = TreeNode(list[i++]);
    queue.add(node.right);
  }

  return treeNode;
}

List deleteNodesReturnForest(TreeNode root, List to_delete) {
  List forest = [];
  Set toDelete = {};

  for (int i in to_delete) {
    toDelete.add(i);
  }

  deleteNodes(root, toDelete, forest);
  return forest;
}

TreeNode deleteNodes(TreeNode node, Set toDelete, List forest) {
  if (node == null) {
    return null;
  }

  deleteNodes(node.left, toDelete, forest);
  deleteNodes(node.right, toDelete, forest);

  if (toDelete.contains(node.val)) {
    return null;
  } else {
    forest.add(node);
    return node;
  }
}

main() {
  var treeNode = createTree([1, 2, 3, 4, 5, 6, 7]);
  var forest = deleteNodesReturnForest(treeNode, [3, 5]);

  for (int i = 0; i < forest.length; i++) {
    print(forest[i].val);
  }
}
