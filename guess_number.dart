import 'dart:math';

class Game {
  var n;
  var pick;

  Game(this.n) {
    var random = Random();
    pick = 5 + random.nextInt(n - 5);
  }

  int guess(int num) {
    if (num > pick) return -1;
    if (num < pick) return 1;
    if (num == pick) return 0;
  }
}

int guessNumberOne(int n) {
  var game = Game(n);

  for (int i = 1; i < n; i++) {
    if (game.guess(i) == 0) {
      return i;
    }
  }
}

int guessNumberTwo(int n) {
  var game = Game(n);
  var low = 1;
  var high = n;

  while (low <= high) {
    var mid = low + (high - low);
    if (game.guess(mid) == 0) return mid;
    if (game.guess(mid) > 1) low = mid + 1;
    if (game.guess(mid) < 1) high = mid - 1;
  }

  return -1;
}

void main() {
  print(guessNumberOne(10));
  print(guessNumberTwo(10));
}
