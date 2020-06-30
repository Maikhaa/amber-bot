List mergeSortedArrays(List first, List second) {
  if (first == null || second == null) return [];

  var i = 0;
  var j = 0;
  var result = [];

  while (i < first.length && j < second.length) {
    if (first[i] <= second[j]) {
      result.add(first[i++]);
    } else {
      result.add(second[j++]);
    }
  }

  if (i == first.length) {
    while (j < second.length) {
      result.add(second[j++]);
    }
  }

  if (j == second.length) {
    while (i < first.length) {
      result.add(first[i++]);
    }
  }

  return result;
}


void main() {
  print(mergeSortedArrays(null, null)); // []
  print(mergeSortedArrays([], [])); // []
  print(mergeSortedArrays([], [1, 2, 3])); // [1, 2, 3]
  print(mergeSortedArrays([5, 6, 7], [])); // [5, 6, 7]
  print(mergeSortedArrays([2, 4, 6], [1, 3, 7])); // [1, 2, 3, 4, 6, 7]
  print(mergeSortedArrays([2, 4, 6, 8], [1, 7])); // [1, 2, 4, 6, 7, 8]
}

