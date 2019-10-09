void steps(int number) {
  for (int i = 1; i <= number; i++) {
    var result = '#' * i + ' ' * (number - i);
    print(result);
  }
}

main() {
  steps(4);
}
