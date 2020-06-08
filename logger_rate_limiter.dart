class Logger {
  Map map = {};

  bool shouldPrintMessage(String message, int timestamp) {
    if (message == null || timestamp == null || message.isEmpty) return false;

    if (map.containsKey(message)) {
      if (timestamp - map[message] < 10) {
        return false;
      } else {
        map[message] = timestamp;
      }
    } else {
      map[message] = timestamp;
    }

    return true;
  }
}

void main() {
  var logger = Logger();
  print(logger.shouldPrintMessage("foo", 1));
  print(logger.shouldPrintMessage("bar", 2));
  print(logger.shouldPrintMessage("foo", 3));
  print(logger.shouldPrintMessage("bar", 8));
  print(logger.shouldPrintMessage("foo", 10));
  print(logger.shouldPrintMessage("foo", 11));
}
