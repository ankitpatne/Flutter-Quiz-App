class QuizQuestions {
  const QuizQuestions(
    this.question,
    this.answers,
    //  this.correctAnswer,
  );

  final String question;
  final List<String> answers;
  // final int correctAnswer;

  List<String> getSuffledAnswers() {
    final shuffeledAnswers = List.of(
        answers); // List.of() is used to create a copy of a list. Here, we are creating a copy of the answers list.
    shuffeledAnswers.shuffle();
    return shuffeledAnswers;
  }
}
