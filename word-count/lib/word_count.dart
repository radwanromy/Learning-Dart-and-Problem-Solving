class WordCount {
  Map<String, int> countWords(String s) {
    Map<String, int> wordCounts = new Map();

    s = s.toLowerCase();

    RegExp regExp = RegExp(r"[1-9]+|[a-z]+'[a-z]+|[a-z]+");

    Iterable<String> matches = regExp.allMatches(s).map((m) => m[0]!);

    matches.forEach((word) {
      wordCounts.update(word, (value) => value + 1, ifAbsent: () => 1);
    });

    return wordCounts;
  }
}

void main() {
  WordCount wordCount = WordCount();
  print(wordCount.countWords('car: carpet as java: javascript!!&@\$%^&'));
}