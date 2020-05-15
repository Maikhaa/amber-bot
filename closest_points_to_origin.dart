import 'package:collection/collection.dart';

List closestPoint(List points, int k) {
    if (points.isEmpty || points == null) return [];

    var resultPoints = [];

    var sortedPoints = HeapPriorityQueue((List a, List b) =>
        (a[0] * a[0] + a[1] * a[1]) .compareTo(b[0] * b[0] + b[1] * b[1]));

    for (List point in points) {
        sortedPoints.add(point);
      }

    for(int i = 0; i < k; i++) {
      var point  = sortedPoints.removeFirst();
      resultPoints.add([point[0], point[1]]);
    }

    return resultPoints;
}

void main() {
  print(closestPoint([
    [3, 3],
    [5, -1],
    [-2, 4]
  ], 2));
  print(closestPoint([
    [1, 3],
    [-2, 2]
  ], 1));
}
