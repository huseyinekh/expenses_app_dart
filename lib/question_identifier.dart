import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final bool isCorrectAnswer;
  final int index;
  QuestionIdentifier(
      {Key? key, required this.index, required this.isCorrectAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isCorrectAnswer ? Colors.green : Colors.pink,
            borderRadius: BorderRadius.circular(100)),
        child: Text(
          index.toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
    );
  }
}
