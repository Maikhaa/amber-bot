import 'dart:math';

int longestSubstring(String string, int k) {
  if (string.isEmpty || string == null) return 0;

  var i = 0;
  var j = 0;
  var longest = 0;
  Map map = {};

  while (j < string.length) {
    map[string[j]] ??= 0;
    map[string[j]]++;

    if (map.keys.length == k) {
      longest = max<int>(longest, j - i + 1);
    }

    while (map.keys.length > k) {
      map[string[i]]--;
      if (map[string[i]] == 0) map.remove(string[i]);
      i++;
    }

    j++;
  }

  return longest;
}

void main() {
  print(longestSubstring("eceba", 2));
  print(longestSubstring("ecebcekcece", 3));
  print(longestSubstring("pwwkew", 3));
}
