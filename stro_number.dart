bool stroNumber(String string) {
  if (string.isEmpty || string == null) return false;

  var i = 0;
  var j = 0;

  if (string[i] == "0" || string[i] == "8") {
    while (i < string.length - 1 && string[i] == string[i + 1]) {
      i++;
    }
  }

  while (j < string.length - 1 && string[j] == "6" && string[j + 1] == "9") {
    j = j + 2;
  }

  if (i == string.length - 1 || j == string.length) {
    return true;
  }

  return false;
}

void main() {
  print(stroNumber('888'));
  print(stroNumber('00000'));
  print(stroNumber('69'));
  print(stroNumber('696'));
  print(stroNumber('696969696969'));
}
