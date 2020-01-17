class Node {
  var data;
  var rigth;
  var left;

  Node(this.data);

  void insert(int newData, [Node node]) {
    node ??= this;

    if (newData < node.data) {
      if (node.left == null) {
        node.left = Node(newData);
      } else {
        insert(newData, node.left);
      }
    }

    if (newData > node.data) {
      if (node.rigth == null) {
        node.rigth = Node(newData);
      } else {
        insert(newData, node.rigth);
      }
    }
  }

  void insertError(int newData, [Node node]) {
    node ??= this;
    node.left.rigth = Node(newData);
  }
}

bool validate(Node node, [int min, int max]) {

  if (max != null && node.data > max) {
    return false;
  }

   if (min != null && node.data < min) {
    return false;
  }

  if (node.left != null && validate(node.left, min, node.data) == false) {
    return false;
  }

  if (node.rigth != null && validate(node.rigth, node.data, max) == false) {
    return false;
  }

  return true;
}

//4
//2     5
//-1 6

main() {
  var node = Node(4);

  node.insert(2);
  node.insert(5);
  node.insert(-1);
  //node.insert(3);
  node.insertError(6);

  print('node.data ${node.data}');
  print('node.left.data ${node.left.data}');
  print('node.rigth.data ${node.rigth.data}');
  print('node.left.left.data ${node.left.left.data}');
  print('node.left.rigth.data ${node.left.rigth.data}');

  print('result ${validate(node)}');
}
