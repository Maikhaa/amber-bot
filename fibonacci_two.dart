int fibonacci(int number) {
  if (number == null) {
    throw 'Invalid input';
  }

  var list = [0, 1];

  for (var i = 2; i <= number; i++) {
    var value = list[i - 1] + list[i - 2];
    list.add(value);
  }

  return list[number];
}

void main() {
  print(fibonacci(6));
}
