bool repeatedSubStringPattern(String s) {
  int n = s.length;
  var table = List.filled(n, 0);

  for (int i = 1; i < n; i++) {
    int j = table[i - 1];
    while (j > 0 && s[i] != s[j]) {
      j = table[j - 1];
    }
    if (s[i] == s[j]) {
      j++;
    }
    table[i] = j;
  }

  int length = table[n - 1];
  return length != 0 && n % (n - length) == 0;
}

void main() {
  print(repeatedSubStringPattern("aba"));
  print(repeatedSubStringPattern("abcabcabcabc"));
}
