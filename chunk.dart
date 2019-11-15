List<List> chunk(List<int> array, int chunkSize) {
  List<List> listResult = [];
  var chunk = [];

  for (int item in array) {
    if (chunk.length < chunkSize) {
      chunk.add(item);
    }
    if (chunk.length == chunkSize) {
      listResult.add(chunk);
      chunk = [];
    }
    if (array.indexOf(item) + 1 == array.length && chunk.isNotEmpty) {
      listResult.add(chunk);
    }
  }
  return listResult;
}

void main() {
  print(chunk([1, 2, 3, 4, 5, 6, 7, 8, 9], 4));
}
