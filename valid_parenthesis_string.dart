import 'dart:collection';

bool validParethesisString(String string) {
  var charList = string.split('');
  var stack = Queue();
  var asterixCount = 0;

  for (String char in charList) {
    if (char == "(") {
      stack.addFirst(char);
    }

    if (char == ")") {
      if (stack.isNotEmpty) {
        stack.removeFirst();
      } else if (stack.isEmpty && asterixCount == 0) {
        return false;
      } else if (stack.isEmpty && asterixCount > 0) {
        asterixCount--;
      }
    }

    if (char == "*") {
      asterixCount++;
    }
  }

  if (stack.isEmpty) return true;
  if (stack.length <= asterixCount) return true;

  return false;
}

main() {
  print(validParethesisString("(*))"));
}
