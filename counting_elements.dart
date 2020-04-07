int countingElements(List list) {
  Set set = {};
  var counter = 0;

  for (int number in list) {
    set.add(number);
  }

  for (int number in list) {
    if (set.contains(number + 1)) {
      counter++;
    }
  }

  return counter;
}

void main() {
  print(countingElements([1, 3, 2, 3, 5, 0]));
}
