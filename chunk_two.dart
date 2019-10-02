List<List> chunk(List<int> list, int size) {
  List<List> chunked = [];
  var chunk = [];
  var count = 0;

  while (count <= list.length ~/ size) {
    chunk = list.skip(size * count).take(size).toList();
    if (chunk.isNotEmpty) {
      chunked.add(chunk);
    }
    count ++;
  }

  return chunked;
}

main() {
  print(chunk([1, 2, 3, 4, 5, 6, 7], 2));
}
