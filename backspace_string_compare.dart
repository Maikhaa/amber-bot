import 'dart:collection';

bool backspaceStringCompare(String stringA, String stringB) {
  if (stringA.isEmpty || stringB.isEmpty || stringA == null || stringB == null)
    return false;

  var stackA = backspaceString(stringA);
  var stackB = backspaceString(stringB);

  while (stackA.isNotEmpty) {
    var current = stackA.removeFirst();
    if (stackB.isEmpty || stackB.removeFirst() != current) return false;
  }

  return stackA.isEmpty && stackB.isEmpty;
}

Queue backspaceString(String string) {
  var stack = Queue();

  for (int i = 0; i < string.length; i++) {
    if (string[i] != "#") stack.addFirst(string[i]);
    if (string[i] == "#" && stack.isNotEmpty) stack.removeFirst();
  }

  return stack;
}

void main() {
  print(backspaceStringCompare("a##c", "#a#c"));
}
