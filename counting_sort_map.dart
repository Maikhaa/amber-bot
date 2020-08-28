List countingSort(List list,int max) {
  Map map = {};
  var result = [];

  for (int i = 0; i <= max; i++) {
    map[i] = 0;
  }

  for (int number in list) {
    map[number]++;
  }

  for (int key in map.keys) {
    while(map[key] > 0) {
      result.add(key);
      map[key]--;
    }
  }

  return result;
}

void main() {
  print(countingSort([55], 100)); // [55]
  print(countingSort([60, 30], 100)); // [30, 60]
  print(countingSort([37, 89, 41, 65, 91, 53], 100)); // [37, 41, 53, 65, 89, 91]
  print(countingSort([20, 10, 30, 30, 10, 20], 100)); //[10, 10, 20, 20, 30, 30]
}
