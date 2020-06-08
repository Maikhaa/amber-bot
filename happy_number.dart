bool happyNumber(int number) {
  if (number == null) return false;

  var stringList = number.toString().split('');
  var numberList = stringList.map(int.parse).toList();

  var result = 0;

  for (var i = 0; i < numberList.length; i++) {
    numberList[i] = numberList[i] * numberList[i];
    result = result + numberList[i];
  }

  return result == 1 ? true : happyNumber(result);
}

main() {
  print(happyNumber(19));
}
