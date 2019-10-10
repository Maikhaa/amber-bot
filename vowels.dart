int vowels(String string) {
    final vowels = 'aeiou';
    int count = 0;

    for (int i = 1; i < string.length; i++) {
        if(vowels.contains(string[i])) {
    count++;
}
}

return count;
}

main() {
    print(vowels('lulu'));
}
