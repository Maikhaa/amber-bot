void fizzBuzz(int number) {
  for (var i = 1; i <= number; i++) {
    bool multThree = false;
    bool multFive = false;

    if (i % 3 == 0) {
      multThree = true;
    }
    if (i % 5 == 0) {
      multFive = true;
    }

    if (multThree && multFive) {
      print('fizzbuzz');
    } else if (multThree) {
      print('fizz');
    } else if (multFive) {
      print('buzz');
    } else {
      print(i);
    }
  }
}

main() {
  fizzBuzz(30);
}
