List productOfArray(List list) {
  var leftProds = [];
  var rigthProds = [];
  var resultProds = [];
  var prod;

  for (var i = 0; i < list.length; i++) {
    i == 0 ? prod = 1 : prod = prod * list[i - 1];
    leftProds.add(prod);
  }

  for (var i = list.length - 1; i >= 0; i--) {
    i == list.length - 1 ? prod = 1 : prod = prod * list[i + 1];
    rigthProds.insert(0, prod);
  }

  for (var i = 0; i < list.length; i++) {
    resultProds.add(rigthProds[i] * leftProds[i]);
  }

  return resultProds;
}

void main() {
  print(productOfArray([1, 2, 3, 4]));
}
