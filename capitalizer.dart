String capitalize(String string) {
  var resultString = '';
  var wordList = string.split(' ');

  for (String word in wordList) {
    var capWord = _capWord(word);
    resultString = '$resultString $capWord';
  }

  return resultString;
}

String _capWord(String word) {
  var charList = word.split('');
  charList[0] = charList[0].toUpperCase();
  return charList.join();
}

main() {
  print(capitalize('look it is working'));
}
