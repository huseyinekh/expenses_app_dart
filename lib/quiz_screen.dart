import 'package:flutter/material.dart';
import 'package:my_app2/answer_button.dart';
import 'package:my_app2/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
class QuizScreen extends StatefulWidget {
 const QuizScreen({Key? key, required this.onSelectAnswer}) : super(key: key);

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  var currentIndex=0;
  void answerQuestion(String answer){
    widget.onSelectAnswer(answer);
    setState(() {
      if(currentIndex<questions.length){

        currentIndex++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
  final curentQuestion = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
          textAlign:TextAlign.center,
              curentQuestion.text,
              style:  GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
            
            SizedBox(
              height: 30,
            ),
            ...curentQuestion.answers.map((answer) {
              return AnswerButton(answer, (){answerQuestion(answer);});
            })
          ],
        ),
      ),
    );
  }
}
