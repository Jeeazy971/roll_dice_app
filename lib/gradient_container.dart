import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const startAlignement = Alignment.topLeft;
const endAlignement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {Key? key})
      : super(key: key);

  const GradientContainer.purple({Key? key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo,
        super(key: key);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlignement,
            end: endAlignement),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
