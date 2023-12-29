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
      side:
          const BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 2),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: SizedBox(
        width: 350,
        child: ElevatedButton(
          onPressed: selectHandler,
          style: optionStyle,
          child: Text(
            answerText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
