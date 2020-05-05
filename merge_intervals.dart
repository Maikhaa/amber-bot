import 'dart:math';

List mergeIntervals(List intervals) {
  var result = [];

  intervals.sort((a, b) => a[0].compareTo(b[0]));

  for (int i = 0; i < intervals.length; i++) {
    if (i == 0) result.add(intervals[0]);

    if (intervals[i][0] <= result[result.length - 1][1]) {
      result[result.length - 1][1] =
          max<int>(intervals[i][1], result[result.length - 1][1]);
    }

    if (intervals[i][0] > result[result.length - 1][1]) {
      result.add(intervals[i]);
    }
  }

  return result;
}

void main() {
  print(mergeIntervals([
    [2, 6],
    [1, 3],
    [8, 10],
    [15, 18]
  ]));
}
