import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.answerText, this.selectHandler, {super.key});
  final String answerText;
  final void Function() selectHandler;
  final ButtonStyle optionStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.deepPurple,
    foregroundColor: Colors.white,
    
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 2),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: selectHandler,
          style: optionStyle,
          child: Text(
            answerText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
