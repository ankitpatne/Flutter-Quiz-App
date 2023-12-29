import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  // final String questionText;
  // final String answerText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 25),
                        child: Container(
                          padding: const EdgeInsets.all(
                              8.0), // Add some padding to give the text some room
                          decoration: BoxDecoration(
                            color: data['selected_answer'] ==
                                    data['correct_answer']
                                ? Colors.green
                                : Colors.red,
                            shape: BoxShape
                                .circle, // This makes the container circular
                          ),
                          child: Text(
                            ((data['question_index'] as int) + 1).toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      // to make the column take up the remaining space in the row in which it is placed otherwise it will take up only the space required by the text even if the text go beyond the screen
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data['question'].toString(),
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: data['selected_answer'] ==
                                        data['correct_answer']
                                    ? Colors.white
                                    : Colors.black,
                              )),
                          Text("Your Answer: ${data['selected_answer']}",
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 240, 28),
                              )),
                          Text(
                            "Correct Answer: ${data['correct_answer']}",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 36, 255, 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
