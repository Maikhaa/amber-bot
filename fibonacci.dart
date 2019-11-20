int fibonacci(int number) {
  var list = [];
  for (var i = 0; i <= number; i++) {
    var val = 0;
    if (list.length == 0 || list.length == 1) {
      list.add(i);
    } else {
      val = list[i - 1] + list[i - 2];
      list.add(val);
    }
  }
  return list[number];
}

void main() {
  print(fibonacci(6));
}
