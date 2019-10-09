void steps ([int number, int row = 0, String stepString = '']) {
  if (row == number) {
    return;
  }

  if (stepString.length == number) {
    print(stepString);
    steps(number, row + 1);
    return;
  }

  if (stepString.length <= row) {
    stepString += '#';
  } else {
    stepString += ' ';
  }
  steps(number, row, stepString);
}

main() {
  steps(3);
}
