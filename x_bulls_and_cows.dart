String bullsAndCows(String secret, String guess) {
  if (secret.isEmpty || guess.isEmpty || secret == null || guess == null)
    return '';

  Map secretMap = {};
  var bull = 0;
  var cow = 0;

  for (int i = 0; i < secret.length; i++) {
    secretMap[secret[i]] ??= [0, []];
    secretMap[secret[i]][0]++;
    secretMap[secret[i]][1].add(i);
  }

  for (int i = 0; i < guess.length; i++) {
    if (secretMap.containsKey(guess[i]) && secretMap[guess[i]][0] != 0) {
      if (secretMap[guess[i]][1].contains(i)) {
        bull++;
      } else {
        cow++;
      }
      secretMap[guess[i]][0]--;
    }
  }

  return "${bull}A${cow}B";
}

main() {
  print(bullsAndCows("1123", "0111"));
  print(bullsAndCows("1807", "7810"));
}
