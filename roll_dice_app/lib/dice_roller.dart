import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void roll() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // 0<>5 so add 1 then 6 ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20), //add 20px space between img and btn
        ElevatedButton(
          onPressed: roll,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(65, 10, 65, 10),
            foregroundColor: Colors.black,
            backgroundColor: const Color.fromARGB(255, 206, 233, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Text(
            'ROll',
            style: GoogleFonts.lobsterTwo(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
