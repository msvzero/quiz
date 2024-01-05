import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widget/start_screen.dart';
import 'package:quiz_app/custom_widget/question_screen.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/custom_widget/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultsSreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurple,
                Colors.purple,
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
