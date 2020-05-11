bool isBadVersion(int n) {
  if (n >= 3) return true;
  return false;
}

int findBadVersion(int n) {
  if (n == null) return -1;

  var low = 1;
  var high = n;

  while (low <= high) {
    var mid = low + (high - low) ~/ 2;

    if (isBadVersion(mid) == true && isBadVersion(mid - 1) == false)
      return mid;
    if (isBadVersion(mid) == true && isBadVersion(mid - 1) == true)
      high = mid - 1;
    if (isBadVersion(mid) == false)
      low = mid + 1;
  }

}

void main() {
  print(findBadVersion(10));
}
