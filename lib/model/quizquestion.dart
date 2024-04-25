class Quizquestion {
  final String text;
  final List<String> answer;

  Quizquestion(this.text, this.answer);
  List<String> getShuffledAnswer(){
    // ignore: non_constant_identifier_names
    final Shuffeldlist=List.of(answer);
    Shuffeldlist.shuffle();
    return Shuffeldlist;

  }
}
