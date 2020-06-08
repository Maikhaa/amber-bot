bool xOfAKind(List deck) {
  if (deck.length < 2) return false;

  Map map = {};
  var minValue = deck.length;

  for (int i = 0; i < deck.length; i++) {
    map[deck[i]] ??= 0;
    map[deck[i]]++;
  }

  for (int key in map.keys) {
    if (map[key] < 2) return false;
    if (map[key] < minValue) minValue = map[key];
  }

  for (int key in map.keys) {
    if (map[key] % minValue != 0) return false;
  }

  return true;
}

main() {
  print(xOfAKind([1, 2, 3, 4, 4, 3, 2, 1]));
  print(xOfAKind([1, 1, 1, 2, 2, 2, 3, 3]));
  print(xOfAKind([]));
  print(xOfAKind([1, 1, 2, 2, 2, 2, 2, 2]));
}
