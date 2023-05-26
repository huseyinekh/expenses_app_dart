import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app2/data/questions.dart';
import 'package:my_app2/questions_summary.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen(
      {required this.chosenAnswers, required this.restartQuiz, super.key});
  final List<String> chosenAnswers;
  final void Function() restartQuiz;
  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'index': i,
        'question': questions[i].text,
        'true_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final sumData = getSummaryData();
    final questionCount = questions.length;
    final trueAnswersCount = sumData.where((data) {
      return data['user_answer'] == data['true_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Ümumi sual sayı $questionCount . Doğru cavabların sayı $trueAnswersCount.",
            style: GoogleFonts.langar(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 30),
          QuestionsSummary(summaryQuestion: getSummaryData()),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: restartQuiz,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
              child: Text(
                "Yenidən başla",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ))
        ]),
      ),
    );
  }
}
