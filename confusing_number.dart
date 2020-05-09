bool confusingNumber(int num) {
  if (num == null) return false;

  Map map = {};
  var i = 0;

  var strNum = num.toString();

  while (i < strNum.length &&
      (strNum[i] == "0" ||
          strNum[i] == "1" ||
          strNum[i] == "6" ||
          strNum[i] == "8" ||
          strNum[i] == "9")) {
    if (strNum[i] == "0" || strNum[i] == "1" || strNum[i] == "8") {
      map[strNum[i]] ??= 0;
      map[strNum[i]]++;
    }

    i++;
  }

  for (int count in map.values) {
    if (count == strNum.length) return false;
  }

  return i == strNum.length;
}

void main() {
  print(confusingNumber(6));
  print(confusingNumber(89));
  print(confusingNumber(11));
  print(confusingNumber(25));
  print(confusingNumber(666));
  print(confusingNumber(888));
  print(confusingNumber(889));
}
