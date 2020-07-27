bool twoSum(int target, List numbers){
  if (numbers == null || target == null) return false;

  numbers.sort();

  for (int i = 0; i < numbers.length; i++) {
    var complement = target - numbers[i];

    var low = i + 1;
    var high = numbers.length - 1;

    while(low <= high) {
      var middle = (low + (high - low) / 2).toInt();

      if (numbers[middle] == complement) {
        return true;
      }

      if (numbers[middle] < complement) {
        low = middle + 1;
      }

      if (numbers[middle] > complement) {
        high = middle - 1;
      }
    }
  }

  return false;
}

void main() {
  print(twoSum(1, [4, 2]));
  print(twoSum(6, [2, 4]));
  print(twoSum(6, [3, 8]));
  print(twoSum(6, [3, 8, 3]));
  print(twoSum(7, [1, 2, 3, 4, 5, 6]));
  print(twoSum(7, [2, 3, 4]));
  print(twoSum(6, [6]));
  print(twoSum(6, []));
}
