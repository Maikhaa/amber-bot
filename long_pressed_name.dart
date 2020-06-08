bool longPressedName(String name, String typed) {
  if (name == null || typed == null || typed.isEmpty || name.isEmpty)
    return false;

  Map map = {};

  for (int i = 0; i < typed.length; i++) {
    map[typed[i]] ??= 0;
    map[typed[i]]++;
  }

  for (int i = 0; i < name.length; i++) {
    if (map.containsKey(name[i])) {
      if (map[name[i]] == 0) {
        return false;
      } else {
        map[name[i]]--;
      }
    }
  }

  return true;
}

main() {
  print(longPressedName("alex", "aaalleeeexxx"));
  print(longPressedName("saeed", "saaaedddd"));
}
