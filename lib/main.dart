import 'package:flutter/material.dart';
import 'package:dicerollapp/gradientcontainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 108, 29, 200),
          Color.fromARGB(255, 85, 35, 142),
          "DICE ROLLING GAME",
        ),
      ),
    ),
  );
}
