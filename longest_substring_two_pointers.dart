int longestSubString(String string) {
  var i = 0;
  var j = 1;
  var longest = 0;
  Set unique = {};

  while (j < string.length) {
    if (unique.contains(string[j])) {
      if (unique.length > longest) longest = unique.length;
      unique = {};
      i = j;
    }
    unique.add(string[j]);
    j++;
  }

  return longest;
}

void main() {
  print(longestSubString("abcabcbb"));
  print(longestSubString("absjdnwabakj"));
  print(longestSubString("pwwkew"));
}
