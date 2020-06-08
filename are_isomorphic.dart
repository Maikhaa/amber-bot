bool areIsomorphic(String s, String t) {
  if (s == null || t == null || s.isEmpty || t.isEmpty) return false;

  var i = 0;
  Map map = {};

  while (i < s.length) {
    if (map.containsKey(s[i])) {
      if (map[s[i]] != t[i] && map[s[i]] != s[i]) return false;
    } else {
      map[s[i]] = t[i];
    }
    i++;
  }

  return true;
}

main() {
  print(areIsomorphic("egg", "add"));
  print(areIsomorphic("paper", "title"));
  print(areIsomorphic("foo", "bar"));
}
