bool isSubsequence(String s, String t) {
  if (s.isEmpty || t.isEmpty || s == null || t == null) return false;

  Map map = {};
  var index = 0;

  for (int i = 0; i < t.length; i++) {
    map[t[i]] = i;
  }

  for (int i = 0; i < s.length; i++) {
    if (map.containsKey(s[i])) {
      if (map[s[i]] >= index) {
        index = map[s[i]];
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
  print(isSubsequence("abc", "afgtbdkc"));
  print(isSubsequence("axc", "ahbgdc"));
}
