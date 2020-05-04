int longestSubstring(String string) {
  if (string == null) return 0;
  Map map = {};
  var longest = 0;

  var charList = string.split('');

  for (String char in charList) {
    map[char] ??= 0;
    map[char]++;

    if (map.keys.length > longest) longest = map.keys.length;
    if (map[char] == 2) map = {};
  }

  return longest;
}

void main() {
  print(longestSubstring("abcabcbb"));
  print(longestSubstring("bbbbbbbb"));
  print(longestSubstring("pwwkew"));
}
