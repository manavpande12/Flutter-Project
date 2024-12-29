import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';


const startB = Alignment.topLeft;
const endB = Alignment.bottomRight;

class BgContainer extends StatelessWidget {
  const BgContainer({super.key, required this.clr});
  final List<Color> clr;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: clr,
          begin: startB,
          end: endB,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
