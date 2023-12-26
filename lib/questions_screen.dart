import 'package:flutter/material.dart';
import 'package:pro3/data/questions.dart';
import 'package:pro3/answer_button.dart';
import 'package:pro3/models/quiz_questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final int noOfQuestions = questions.length;
  var currentQuestionIndex = 0;

  void answerQuestion() {  // to go to the next question when the user taps on an answer button
    setState(() {
      if (currentQuestionIndex < noOfQuestions - 1) {
        currentQuestionIndex++;
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestions currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Question ${currentQuestionIndex + 1} of $noOfQuestions',
            style: GoogleFonts.rubikVinyl(
              
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              
            ),
            // style: const TextStyle(
            //   fontSize: 20,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.white,
            // ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              currentQuestion.question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          ...currentQuestion.getSuffledAnswers().map(
            (answer) {
              return AnswerButton(
                answer,
                answerQuestion,
              );
            },
          ), // ... is called the spread operator. It is used to spread the elements of a list. Here, we are spreading the list of AnswerButton widgets that we get from the map() method. The map() method is used to convert a list of one type to another type. Here, we are converting a list of strings to a list of AnswerButton widgets.

          // AnswerButton(
          //   currentQuestion.answers[0],
          //   (){}
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // AnswerButton(
          //   currentQuestion.answers[1], () {}
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // AnswerButton(
          //   currentQuestion.answers[2], () {}
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // AnswerButton(
          //   currentQuestion.answers[3], () {}
          // ),
        ],
      ),
    );
  }
}
