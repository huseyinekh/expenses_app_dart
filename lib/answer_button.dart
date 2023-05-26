import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.clickHandler, {super.key});
  final String text;
  final void Function() clickHandler;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: clickHandler,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 2, 155, 132),
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40)),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ));
  }
}
