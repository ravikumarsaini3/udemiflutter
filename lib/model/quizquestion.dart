class Quizquestion {
  final String text;
  final List<String> answer;

  Quizquestion(this.text, this.answer);
  List<String> getShuffledAnswer(){
    final Shuffeldlist=List.of(answer);
    Shuffeldlist.shuffle();
    return Shuffeldlist;

  }
}
