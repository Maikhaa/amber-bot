int paintFence(int n, int k) {
  if (n < 2) return 0;
  var same = k;
  var diff = k * (k - 1);

  for (int i = 3; i <= n; i++) {
    var preSame = same;
    same = diff;
    diff = (preSame + diff) * (k - 1);
  }

  return same + diff;
}

void main() {
  print(paintFence(3, 2));
}
