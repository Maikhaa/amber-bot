List findIntersection(List listA, List listB) {
  if (listA == listB) return listA;

  var intersection = [];

  for (int number in listA) {
    if (listB.contains(number)) {
      var index = listB.indexOf(number);
      intersection.add(listB.removeAt(index));
    }
  }

  return intersection;
}

main() {
  print(findIntersection([4, 9, 5], [9, 4, 9, 8, 4]));
}
