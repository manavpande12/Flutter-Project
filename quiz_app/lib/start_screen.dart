import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Method 1 For Opacity Through Color
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Method 2 For Opacity
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,

          //   ),
          // ),
          const SizedBox(height: 40),
          Text(
            'Ready To Flex Your Brain Muscles?',
            style: GoogleFonts.lobsterTwo(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
              fontFeatures: [const FontFeature.enable('smcp')],
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              minimumSize: Size(160, 50),
            ),
            icon: Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
              size: 30.0,
            ),
            label: const Text(
              'BEGIN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
