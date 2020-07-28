//write a function that checks if any permutation of an input string is a palindrome

bool permutationPalindrome(String word) {
  if (word == null) return false;

  Set set = {};

  for (int i = 0; i < word.length; i++) {
    if (set.contains(word[i])) {
      set.remove(word[i]);
    } else {
      set.add(word[i]);
    }
  }

  return set.length > 1 ? false : true;
}

main() {
  print(permutationPalindrome("aabcbcd")); // true
  print(permutationPalindrome("aabccbdd")); // true
  print(permutationPalindrome("aabcd")); // false
  print(permutationPalindrome("aabbcd")); // false
}