import 'dart:collection';

String removeOutermostParenthesis(String s) {
  if (s == null) return '';

  var stack = Queue();
  var result = "";
  var temp = "";

  for (int i = 0; i < s.length; i++) {
    if (s[i] == "(") {
      stack.addFirst(s[i]);
    }

    if (s[i] == ")") {
      if (stack.length == 1) {
        stack.removeFirst();
      }
      if (stack.length > 1 && stack.length % 2 != 0) {
        stack.addFirst(s[i]);
      }
      if (stack.length > 1 && stack.length % 2 == 0) {
        while (stack.first == ")") temp += stack.removeFirst();
        while (stack.length > 1) result += stack.removeFirst();
        result += temp + s[i];
      }
    }
  }

  return result;
}

void main() {
  print(removeOutermostParenthesis("(()())(())"));
  print(removeOutermostParenthesis("(()(()))"));
}
