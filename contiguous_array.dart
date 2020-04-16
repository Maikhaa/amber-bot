import 'dart:math';

int continuousArray(List list) {
  var map = {};
  var maxLength = 0;
  var counter = 0;

  map[0] = -1;

  for (int i = 0; i < list.length; i++) {
    list[i] == 1 ? counter++ : counter--;

    if (map.containsKey(counter)) {
      maxLength = max(maxLength, i - map[counter]);
    } else {
      map[counter] = i;
    }
  }

  return maxLength;
}

main() {
  print(continuousArray([0, 1, 1, 0, 1, 1]));
}
