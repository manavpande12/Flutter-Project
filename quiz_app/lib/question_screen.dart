import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    /* Here Widget is used to access to onSelectAnswer
    bcoz and store the answer in it pass as parameter*/
    setState(() {
      currentQuestionIndex++; //inc by + 1
    });

  }


  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity, // use as much as width
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //main = vertical axis
          crossAxisAlignment: CrossAxisAlignment.stretch, //cross = horizontal axis
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lobsterTwo(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: const Color.fromARGB(255, 239, 202, 255),
                fontFeatures: [const FontFeature.enable('smcp')],
              ),
            ),
            const SizedBox(height: 30),
        
            // Method 1 : Simple But Take Place
            // AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
            // AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
            // AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
            // AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
        
            // Method 2 : Hard But Less Code
            ...currentQuestion.getShuffledAnswers().map((answer){
              /*The spread operator (...) allows you to include 
              all the elements of one collection into another collection. 
              It is particularly useful when building lists dynamically.
              */
              return AnswerButton(
                answerText: answer, 
                onTap: (){
                answerQuestion(answer);
                },
                );
            })
          ],
        ),
      ),
    );
  }
}
