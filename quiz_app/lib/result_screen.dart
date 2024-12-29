import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswer,
    required this.onRestart,
  });

  final void Function() onRestart;
  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity, // use as much as width
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //main = vertical axis
          children: [
            Text(
              'You Answered $numCorrectAnswers Out Of $numTotalQuestions Questions Correctly !',
              textAlign: TextAlign.center,
              style: GoogleFonts.lobsterTwo(
                fontSize: 22,
                color: Color.fromARGB(255, 230, 200, 253),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
                size: 24,
              ),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
