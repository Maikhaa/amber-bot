List groupAnagrams(List list) {
  Map map = {};

  for (String word in list) {
    var charList = word.split('');
    charList.sort();
    var key = charList.join();

    if (map.containsKey(key)) {
      map[key].add(word);
    } else {
      map[key] = [word];
    }
  }

  return map.values.toList();
}

void main() {
  print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]));
}
