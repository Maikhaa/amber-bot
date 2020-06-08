String longestWordInDictionary(List dict) {
  if (dict == null) return '';

  dict.sort();

  Set set = {};
  var result = '';

  for (String word in dict) {
    if (word.length == 1 || set.contains(word.substring(0, word.length - 1))) {
      set.add(word);
      if (word.length > result.length) result = word;
    }
  }

  return result;
}

main() {
  print(longestWordInDictionary(["w", "wo", "wor", "worl", "world"]));
  print(longestWordInDictionary(
      ["a", "banana", "app", "appl", "ap", "apply", "apple"]));
}
