bool isSubsequence(String s, String t) {
  if (s == null || t == null) return false;

  var i = 0;
  var j = 0;

  while (j < t.length) {
    while (i < s.length && j < t.length && s[i] == t[j]) {
      i++;
      j++;
    }
    j++;
  }

  return i == s.length;
}

main() {
  print(isSubsequence("abc", "ahbgdc"));
  print(isSubsequence("aaaaaa", "bbaaaa"));
  print(isSubsequence("leeeeetcode", "yyylyeyeyeyeyeytycyoyydyeyyy"));
}
