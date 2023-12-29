import 'package:flutter/material.dart';
import 'package:pro3/data/questions.dart';
import 'package:pro3/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {this.score,
      required this.resetQuiz,
      super.key,
      required this.selectedResultAnswers});
  final int? score;
  final void Function() resetQuiz;
  final List<String> selectedResultAnswers;
  List<Map<String, Object>> resultSummary() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedResultAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'selected_answer': selectedResultAnswers[i],
        'correct_answer': questions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryDataResult = resultSummary();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryDataResult.where((data) {
      return data['selected_answer'] == data['correct_answer'];
    }).length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 129, 95, 255),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Text(
              'Your score is $numCorrectAnswers/$numTotalQuestions ',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 65, 0, 95),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          QuestionSummary(
            summaryDataResult,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 2,
                ),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.refresh, color: Colors.white), // Add this line
                SizedBox(
                    width:
                        10), // Add this line for some space between the icon and text
                Text(
                  'Restart Quiz',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
