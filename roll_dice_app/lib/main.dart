import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roll_dice_app/bg_theme.dart';


void main() {
  runApp(const RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Roll The Dice',
              style: GoogleFonts.lobsterTwo(
                fontWeight: FontWeight.bold,
                fontSize: 38, 
                fontFeatures: [const FontFeature.enable('smcp')],
              ),
            ),
          ),
          backgroundColor: const Color(0xFFCEE9FF),
        ),
        body:BgContainer(
          clr: [
            Color(0xFF5FC7E7),
            Color(0xFF87A3FF),
          ],
        ),
        
        
      ),
    );
  }
}
