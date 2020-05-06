import 'dart:collection';

class MovingAverage {
  final window;
  final queue;
  int sum = 0;

  MovingAverage(this.window) : queue = Queue();

  double next(int number) {
    if (number == null) return null;

    queue.add(number);
    sum += number;

    if (queue.length > window) {
      sum -= queue.removeFirst();
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
