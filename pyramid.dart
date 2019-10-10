void pyramid(int number) {
  var cols = number * 2 - 1;

  for (int row = 1; row <= number; row++) {
    var stringLevel = '';
    for (int col = 1; col <= cols; col++) {
      if (col > number - row && col < number + row) {
        stringLevel += '#';
      } else {
        stringLevel += ' ';
      }
    }
    print(stringLevel);
  }
}

main() {
  pyramid(5);
}
