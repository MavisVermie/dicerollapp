import 'package:flutter/material.dart';
import 'package:dicerollapp/diceroller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, this.text1, {super.key});
  Color color1, color2;
  String text1;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 100),
              child: TextContainer(text1),
            ),
            DiceRoller(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer(this.text1, {super.key});
  final String text1;
  @override
  Widget build(context) {
    return Text(
      text1,
      style: TextStyle(color: Colors.white, fontSize: 40, fontFamily: "arial"),
    );
  }
}
