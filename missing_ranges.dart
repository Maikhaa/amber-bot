List missingRanges(List list, int lower, int upper) {
  if (list == null || list.isEmpty || lower > upper) return [];

  Set set = {};
  Map ranges = {};
  var first = "";
  var last = "";

  for (int num in list) {
    set.add(num);
  }

  for (int i = lower; i <= upper; i++) {
    if (!set.contains(i)) {
      first = i.toString();
      ranges[first] ??= first;
      i++;
    }

    while (!set.contains(i)) {
      last = i.toString();
      i++;
    }

    if (last.isNotEmpty) {
      ranges[first] = ranges[first] + "->" + last.toString();
      last = "";
    }
  }

  return ranges.values.toList();
}


void main() {
  print(missingRanges([0, 1, 3, 5, 16, 20], 0, 20));
}
