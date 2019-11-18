String reverse(String string) {
  var reversed = '';
  for (var i = 0; i < string.length; i++) {
    reversed = string[i] + reversed;
  }
  return reversed;
}

void main() {
  print(reverse('Hola lola'));
}
