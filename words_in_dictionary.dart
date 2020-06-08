String findWords(String string, Set dict) {
  if (dict.contains(string)) return string;

  for (int i = 0; i <= string.length; i++) {
    var word = string.substring(0, i);
    if (dict.contains(word)) {
      var words = findWords(string.substring(i, string.length), dict);
      if (words != null) {
        return word + " " + words;
      }
    }
  }

  return null;
}

void main() {
  print(findWords("wordsindictionary", {"words", "in", "dictionary"}));
}
