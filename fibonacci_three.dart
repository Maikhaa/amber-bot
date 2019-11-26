fib(int number, [int index = 2, int value = 0, List list]) {
  if (list == null) {
    list = [0, 1];
  }

  if (number == 0 || number == 1) {
    return list[number];
  }

  if (index > number) {
    print(list[number]);
    return list[number];
  }

  var value = list[index - 1] + list[index - 2];
  list.add(value);

  fib(number, index + 1, value, list);
}

void main() {
  print(fib(6));
}
