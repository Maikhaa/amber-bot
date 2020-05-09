import 'dart:math';

int minDominoRotations(List A, List B) {
  if (A.length != B.length) return -1;

  var minSwaps = A.length + 1;
  minSwaps = min<int>(minSwaps, numSwaps(A[0], A, B));
  minSwaps = min<int>(minSwaps, numSwaps(A[0], B, A));
  minSwaps = min<int>(minSwaps, numSwaps(B[0], A, B));
  minSwaps = min<int>(minSwaps, numSwaps(B[0], B, A));

  return minSwaps == A.length + 1 ? -1 : minSwaps;
}

int numSwaps(int target, List A, List B) {
  var count = 0;

  for (int i = 0; i < A.length; i++) {
    if (A[i] != target && B[i] != target) return A.length + 1;
    if (A[i] != target && B[i] == target) count++;
  }

  return count;
}

void main() {
  print(minDominoRotations([2, 1, 2, 4, 2, 2], [5, 2, 6, 2, 3, 2]));
  print(minDominoRotations([3, 5, 1, 2, 3], [3, 6, 3, 3, 4]));
}
