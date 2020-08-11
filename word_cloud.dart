// Create a function that takes a string and returns a Map with the words in the
// string as keys and the number of occurrences of each word as values.

Map wordCloud(String string) {
  if (string == null) return {};

  Map map = {};

  var startWordIndex = 0;
  var wordLength = 0;

  for (int i = 0; i < string.length; i++) {
    var char = string[i].toLowerCase();

    if (isLetter(char)) {
      if (wordLength == 0) {
        startWordIndex = i;
      }
      wordLength++;
    }

    if ((!isLetter(char) || i == string.length - 1) && wordLength > 0) {
      var word = string.substring(startWordIndex, startWordIndex + wordLength);
      if (map.containsKey(word)) {
        map[word]++;
      } else {
        map[word] = 1;
      }
      wordLength = 0;
    }
  }
  return map;
}

bool isLetter(String char) =>
    (char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) || char == '\'';

main() {
  print(wordCloud(
      "Apple pie, lemon dessert, chocolate dessert, vanilla cookies, chocolate cake."));
}
