int reverse(int integer) {
  if (isNullOrZero(integer)) {
    throw 'Invalid input';
  } else {
    var reversedIntString = '';
    var intString = integer.abs().toString();
    var charList = intString.split('');
    for (String char in charList) {
      reversedIntString = char + reversedIntString;
    }
    return int.parse(reversedIntString) * integer.sign;
  }
}

bool isNullOrZero(int integer) => integer == null || integer == 0;

main() {
  print(reverse(-3000));
}
