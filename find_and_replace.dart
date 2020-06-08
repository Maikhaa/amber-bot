String findAndReplace(String string, List indexes, List sources, List targets) {
  Map srcMap = {};
  Map trgMap = {};
  Map strMap = {};

  for (int i = 0; i < indexes.length; i++) {
    srcMap[indexes[i]] = sources[i];
  }

  for (int i = 0; i < indexes.length; i++) {
    trgMap[indexes[i]] = targets[i];
  }

  for (int i = 0; i < string.length; i++) {
    strMap[i] = string[i];

    if (indexes.contains(i)) {
      strMap[i] = string.substring(i, i + srcMap[i].length);
      i = i + strMap[i].length - 1;
    }
  }

  for (int key in srcMap.keys) {
    if (strMap[key] == srcMap[key]) {
      strMap[key] = trgMap[key];
    }
  }

  return strMap.values.join();
}

main() {
  print(findAndReplace("abcd", [0, 2], ["a", "cd"], ["eee", "ffff"]));
  print(findAndReplace("abcd", [1, 2], ["b", "cd"], ["eee", "ffff"]));
  print(findAndReplace("abcd", [0, 2], ["ab", "ec"], ["eee", "fff"]));
}
