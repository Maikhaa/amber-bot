String removeOutermostParenthesis(String s) {
  var sum = 0;
  var p = '';
  var result = '';

  for (int i = 0; i < s.length; i++) {
    if (s[i] == "(") sum += 1;
    if (s[i] == ")") sum += -1;

    p += s[i];

    if (sum == 0) {
      result += p.substring(1, p.length - 1);
      p = '';
    }
  }

  return result;
}

void main() {
  print(removeOutermostParenthesis("(()())(())"));
  print(removeOutermostParenthesis("(()(()))"));
}
