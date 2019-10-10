void pyramid(int number, {int row = 1, int col = 1, String string = ''}) {
  var cols = number * 2 - 1;

  if (row > number) {
    return;
  }

  if (col > cols) {
    print(string);
    pyramid(number, row: row + 1);
    return;
  }

  if (col > number - row && col < number + row) {
    string += '#';
  } else {
    string += ' ';
  }
  pyramid(number, row: row, col: col + 1, string: string);
}

main() {
  pyramid(4);
}
