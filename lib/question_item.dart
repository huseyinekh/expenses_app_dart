import 'package:flutter/material.dart';
import 'package:my_app2/question_identifier.dart';

class QuestionItem extends StatelessWidget {
  final Map<String, Object> data;
  const QuestionItem({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bool isTrue = data["true_answer"] == data["user_answer"];
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      QuestionIdentifier(
          index: ((data['index'] as int) + 1), isCorrectAnswer: isTrue),
     SizedBox(width: 20),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data['question'].toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            const SizedBox(height: 5),
            Text(
              data['user_answer'] as String,
              style: TextStyle(
                  color:
                      isTrue ? Colors.white : Color.fromARGB(255, 255, 90, 78),
                  fontSize: 16),
            ),
            Text(
              data['true_answer'] as String,

              style: TextStyle(
                  color: Color.fromARGB(255, 68, 255, 87), fontSize: 16),
            ),
            const SizedBox(height: 5),

          ],
        ),
      )
    ]);
  }
}
