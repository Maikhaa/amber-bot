List rotateList(List list, int k) {
  var newList = List(list.length);

  for (var i = 0; i < list.length; i++) {
    newList[(i + k) % list.length] = list[i];
  }

  list = newList;
  return list;
}

main() {
  print(rotateList([1,2,3,4,5,6,7], 3));
}
