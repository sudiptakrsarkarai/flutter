import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceCount = 'lib/asset/dice-1.png';
  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      diceCount = 'lib/asset/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'The Dice Game',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 36),
        ),
        Padding(padding: EdgeInsets.only(top: 100)),
        Image.asset(
          diceCount,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: EdgeInsets.only(top: 20),
              foregroundColor: Color(0xff000000),
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
