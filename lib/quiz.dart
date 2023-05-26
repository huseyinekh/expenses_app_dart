import 'package:flutter/material.dart';
import 'package:my_app2/start_screen.dart';
import 'package:my_app2/quiz_screen.dart';
import 'package:my_app2/data/questions.dart';
import 'package:my_app2/report_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";

  List<String> quizAnswers = [];
  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
         quizAnswers = [];
    });
  }

  void answerQuestion(String answer) {
    quizAnswers.add(answer);
    if (quizAnswers.length == questions.length) {
      setState(() {
        activeScreen = "report-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget = StartScreen(switchScreen);
    switch (activeScreen) {
      case 'report-screen':
        activeWidget = ReportScreen(
          chosenAnswers: quizAnswers,
          restartQuiz: switchScreen,
        );
        break;
      case 'questions-screen':
        activeWidget = QuizScreen(
          onSelectAnswer: answerQuestion,
        );
        break;
      default:
        activeWidget = StartScreen(switchScreen);
    }
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 244, 5, 144),
                  Color.fromARGB(255, 8, 0, 168)
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                child: activeWidget)));
  }
}
