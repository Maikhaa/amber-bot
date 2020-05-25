class StringIterator {
  var number = 0;
  var charP = 0;
  var numP = 1;
  var string;

  StringIterator(this.string);

  String next() {
    if (number == 0) {
      charP = numP - 1;
      var strNum = '';
      while (numP < string.length && string.codeUnitAt(numP) < 57) {
        strNum += string[numP];
        numP++;
      }
      numP++;
      number = int.parse(strNum);
    }
    number--;

    return string[charP];
  }

  bool hasNext() {
    return numP == string.length + 1 ? false : true;
  }
}

main() {
  var stringIterator = StringIterator("h10l1a2s5");
  print(stringIterator.string);
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.hasNext());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.next());
  print(stringIterator.hasNext());
}
