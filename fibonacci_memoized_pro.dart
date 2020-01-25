int fib(int number, [Map results]) {
  results ??= {};

  if (number < 2) return number;
  if (results.containsKey(number)) return results[number];

  var result = fib(number - 1, results) + fib(number - 2, results);
  results[number] = result;
  return result;
}

main() {
  print(fib(6));
}
