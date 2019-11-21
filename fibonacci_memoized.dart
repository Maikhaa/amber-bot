Function memoize(Function function) {
  var cache = {};

  return (args) {
    if (cache.containsKey(args)) {
      return cache[args];
    }

    var result = function(args);
    cache[args] = result;

    return result;
  };
}

int slowFib(int number) {
  if (number < 2) {
    return number;
  }

  return fib(number - 1) + fib(number - 2);
}

Function fib = memoize(slowFib);

void main() {
  print(fib(12));
}
