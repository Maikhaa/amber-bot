bool areAnagrams(String stringA, String stringB) {
  if (stringA == null || stringB == null) {
    throw 'Invalid null input';
  }

  if (stringA.length != stringB.length) {
    return false;
  }

  var charListA = stringA.toLowerCase().split('')..sort();
  var charListB = stringB.toLowerCase().split('')..sort();

  for (String char in charListA) {
    var index = charListA.indexOf(char);
    if (charListB[index] != char) {
      return false;
    }
  }

  return true;
}

void main() {
  print(areAnagrams('laho', 'hola'));
}
