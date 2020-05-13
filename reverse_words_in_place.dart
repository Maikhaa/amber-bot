List reverseWords(List list) {
  if (list.length < 2) return list;
  if (list == null) return null;

  var i = 0;
  var j = list.length - 1;

  void swap(int i, int j) {
    while (i < j) {
      var temp = list[i];
      list[i] = list[j];
      list[j] = temp;
      i++;
      j--;
    }
  }

  swap(i, j);

  var start = 0;
  for (var i = 0; i < list.length; i++) {
    if (list[i] == '') {
      var end = i - 1;
      swap(start, end);
      start = i + 1;
    }
  }

  return list;
}

void main() {
  print(reverseWords([
    "t",
    "h",
    "e",
    " ",
    "s",
    "k",
    "y",
    " ",
    "i",
    "s",
    " ",
    "b",
    "l",
    "u",
    "e"
  ]));
}
