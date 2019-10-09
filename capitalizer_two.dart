String capitalize(String string) {
  var resultString = string[0].toUpperCase();

  for (var i = 1; i < string.length; i++) {
    if (string[i - 1] == ' ') {
      resultString += string[i].toUpperCase();
    } else {
      resultString += string[i];
    }
  }

  return resultString;
}

main() {
  print(capitalize('look it is working'));
}
