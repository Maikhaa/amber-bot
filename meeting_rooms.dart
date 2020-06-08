import 'package:collection/collection.dart';

int meetingRooms(List intervals) {
  if (intervals == null || intervals.isEmpty) return 0;

  intervals.sort((a, b) => a[0].compareTo(b[0]));
  var scheduledIntervals =
      HeapPriorityQueue((List a, List b) => a[1].compareTo(b[1]));

  for (int i = 0; i < intervals.length - 1; i++) {
    if (scheduledIntervals.isEmpty) scheduledIntervals.add(intervals[i]);

    var scheduledInterval = scheduledIntervals.removeFirst();
    var currentInterval = intervals[i + 1];

    if (currentInterval[0] >= scheduledInterval[1]) {
      scheduledInterval[1] = currentInterval[1];
    } else {
      scheduledIntervals.add(currentInterval);
    }

    scheduledIntervals.add(scheduledInterval);
  }

  return scheduledIntervals.length;
}


main() {
  print(meetingRooms([[0, 30],[5, 10],[15, 20]]));
  print(meetingRooms([[2,4],[7,10]]));
  print(meetingRooms([[9,13],[5,8],[8,12]]));
}
