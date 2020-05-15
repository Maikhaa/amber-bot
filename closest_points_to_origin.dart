class Point {
  var distance;
  var x;
  var y;

  Point(this.distance, this.x, this.y);
}

List closestPoint(List points, int k) {
  if (points.isEmpty || points == null) return [];

  List sortedPoints = [];
  List resultPoints = [];

  for (List p in points) {
    var distance = p[0] * p[0] + p[1] * p[1];
    distance = distance.abs();

    var point = Point(distance, p[0], p[1]);

    if (sortedPoints.isNotEmpty) {
      var insIndex = 0;
      var i = 0;

      while (i < sortedPoints.length &&
          point.distance > sortedPoints[i].distance) {
        insIndex = i + 1;
        i++;
      }

      sortedPoints.insert(insIndex, point);
    } else {
      sortedPoints.add(point);
    }
  }

  for (int i = 0; i <= k - 1; i++) {
    resultPoints.add([sortedPoints[i].x, sortedPoints[i].y]);
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
