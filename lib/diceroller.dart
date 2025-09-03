import 'package:flutter/material.dart';
import 'dart:math';

import 'package:dicerollapp/gradientcontainer.dart';
class DiceRoller extends StatefulWidget{
const DiceRoller({super.key});
@override
  State<DiceRoller> createState() {
    return _DiceRoll();
  }
}
class _DiceRoll extends State<DiceRoller>{
  var randomizer = Random();
  var dicenum = 0;
  rollDice(){
    setState(() {
        dicenum=randomizer.nextInt(6)+1;
    });
  }
@override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$dicenum.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                fontSize: 28,
                ),
              ),
              child: dicenum>0?
              const Text("Roll Again"): Text("Roll Dice"),
            ),
            if(dicenum>0)
            Padding(padding:EdgeInsetsGeometry.only(top:30), child:Text("The dice you rolled is: $dicenum !!!!", style: TextStyle(color: Colors.green, fontSize: 20) ,),)
            else
            Padding(padding:EdgeInsetsGeometry.only(top:30), child:Text("You haven't rolled a dice yet!", style: TextStyle(color: Colors.red, fontSize: 20) ,),),
          ],
        );
  }
}