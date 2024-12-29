import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Method 1 with initState
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  //Now Call Down child:activeScreen

  //Method 2 without init state with if
  var activeScreen = 'StartScreen';
  void switchScreen() {
    setState(() {
      activeScreen = 'QuestionsScreen';
    });
  }

  List<String> selectedAnswer = [];
  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'ResultScreen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'QuestionsScreen';
      selectedAnswer = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'QuestionsScreen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'ResultScreen') {
      screenWidget = ResultScreen(
        chosenAnswer: selectedAnswer,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 154, 0, 154),
                Color.fromARGB(255, 92, 27, 109),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
