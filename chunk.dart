List<List> chunk(List<int> list, int size) {
  List<List> chunked = [];
  var chunk = [];
  var rest = [];

  for (int item in list) {
    if (chunk.length < size) {
      chunk.add(item);
    }
    if (chunk.length == size) {
      chunked.add(chunk);
      chunk = [];
    }
    if (list.length - list.indexOf(item) < size) {
      rest = chunk;
    }
  }

  if (rest.isNotEmpty) {
    chunked.add(rest);
  }

  return chunked;
}

main() {
  print(chunk([1, 2, 3, 4, 5, 6, 7], 2));
}
