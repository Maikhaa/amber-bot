bool validSudoku(List<List> board) {
  List<Set> rowSets = new List.generate(9, (_) => {});
  List<Set> columnSets = new List.generate(9, (_) => {});
  List<Set> boxSets = new List.generate(9, (_) => {});

  for (List row in board) {
    for (String string in row) {
      if (string != ".") {
        var number = int.parse(string);

        var rowIndex = board.indexOf(row);
        var columnIndex = row.indexOf(string);
        var boxIndex = (columnIndex ~/ 3) + 3 * (rowIndex ~/ 3);

        if (checkIfUnique(rowSets, rowIndex, number) == false ||
            checkIfUnique(columnSets, columnIndex, number) == false ||
            checkIfUnique(boxSets, boxIndex, number) == false) return false;
      }
    }
  }

  return true;
}

bool checkIfUnique(List<Set> setsList, int index, int number) {
  return (setsList[index].contains(number) == true) ? false : setsList[index].add(number);
}

main() {
  print(validSudoku([
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]));
}
