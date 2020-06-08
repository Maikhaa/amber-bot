import 'dart:collection';

bool backspaceStringCompare(String stringA, String stringB) {
  if (stringA == null || stringB == null) return false;
  if (stringA.isEmpty || stringB.isEmpty) return false;

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
  print(backspaceStringCompare(null, null));
  print(backspaceStringCompare("", ""));
  print(backspaceStringCompare("a##c", "#a#c"));
}
