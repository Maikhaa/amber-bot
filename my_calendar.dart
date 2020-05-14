class MyCalendar {
  Map calendar = {};

  bool book(int start, int end) {
    if (end < start) return false;
    if (end == null || start == null) return false;

    for (int i = start + 1; i < end; i++) {
      calendar[i] ??= 0;
      calendar[i]++;

      if (calendar[i] > 2) {
        for (int j = start + 1; j == i; j++) {
          calendar[j]--;
        }
        return false;
      }
    }

    return true;
  }
}

void main() {
  var myCalendar = MyCalendar();
  print(myCalendar.book(10, 20));
  print(myCalendar.book(50, 60));
  print(myCalendar.book(10, 40));
  print(myCalendar.book(5, 15));
  print(myCalendar.book(5, 10));
  print(myCalendar.book(25, 55));
}
