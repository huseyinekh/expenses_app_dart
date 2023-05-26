import 'package:flutter/material.dart';
import 'package:my_app2/question_item.dart';
class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryQuestion});

  final List<Map<String, Object>> summaryQuestion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryQuestion.map((data) {
            print(data);
            return QuestionItem(data: data);
          }).toList(),
        ),
      ),
    );
  }
}
