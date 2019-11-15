void fizzBuzz(int n) {
  if (n == null) {
    throw 'Invalid input';
  } else {
    for (var i = 1; i <= n; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        print('FizzBuzz');
      } else if (i % 3 == 0) {
        print('Fizz');
      } else if (i % 5 == 0) {
        print('Buzz');
      } else {
        print(i);
      }
    }
  }
}

void main() {
  fizzBuzz(15);
}
