class Bob {
  String response(String s) {
    s = s.trim();
    var hasLetters = RegExp(r"[A-Za-z]+").hasMatch(s);
    var isYelling = hasLetters && s == s.toUpperCase();
    var isQuestion = s.endsWith("?");

    if (s.isEmpty) return 'Fine. Be that way!';

    if (isYelling && isQuestion) return "Calm down, I know what I'm doing!";

    if (isYelling) return 'Whoa, chill out!';

    if (isQuestion) return "Sure.";

    return "Whatever.";
  }
}