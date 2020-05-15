String addBoldTag(String string, List list) {
  var i = 0;
  var j = 1;
  Set set = {};
  List toBold = [];

  for (String str in list) {
    set.add(str);
  }

  while (i < string.length) {
    var subString = string[i];

    while (j < string.length && !set.contains(subString)) {
      subString += string[j];
      j++;
    }

    if (set.contains(subString)) {
      var start = i;
      var end = j - 1;

      if (toBold.isNotEmpty && (start < toBold[toBold.length - 1]
         || start == toBold[toBold.length - 1] + 1)) {
        toBold[toBold.length - 1] = end;
      } else {
        toBold.add(start);
        toBold.add(end);
      }
    }

    i++;
    j = i + 1;
  }

  var charList = string.split('');

  for (int i = 0; i < toBold.length; i++) {
    if (i % 2 == 0) {
      charList[toBold[i]] = "<br>" + charList[toBold[i]];
    } else {
      charList[toBold[i]] = charList[toBold[i]] + "</br>";
    }
  }

  return charList.join();
}

void main() {
  print(addBoldTag("abcxyz123", ["abc", "123"]));
  print(addBoldTag("aaabbcc", ["aaa", "aab", "bc"]));
}
