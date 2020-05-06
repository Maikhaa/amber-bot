import 'dart:collection';

class MovingAverage {
  int window;
  var queue;

  MovingAverage(this.window) : queue = Queue();

  double next(int number) {
    if (number == null) return null;
    var sum = 0;

    queue.add(number);

    if (queue.length > window) {
      queue.removeFirst();
    }

    for (int num in queue) {
      sum += num;
    }

    return sum / queue.length;
  }
}

void main() {
  MovingAverage m = new MovingAverage(3);
  print(m.next(1));
  print(m.next(10));
  print(m.next(5));
  print(m.next(3));
}
