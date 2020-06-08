import 'dart:collection';

bool isSubsequence(String s, String t) {
  if (s == null || t == null || s.isEmpty || t.isEmpty) return false;

  Map map = {};
  var index = 0;

  for (int i = 0; i < t.length; i++) {
    map[t[i]] ??= Queue();
    map[t[i]].add(i);
  }

  print(map);

  for (int i = 0; i < s.length; i++) {
    if (map.containsKey(s[i])) {
      print(map[s[i]]);
      if (index <= map[s[i]].first) {
        index = map[s[i]].first;
        print(index);
        map[s[i]].removeFirst();
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  return true;
}

main() {
  print(isSubsequence("abc", "ahbgdc"));
  print(isSubsequence("aaaaaa", "bbaaaa"));
}
