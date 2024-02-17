import 'package:flutter/material.dart';
import 'dice.dart';

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}):super(key: key); //my key arg is returned to parent class
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override //extra meta data added to this annotation
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.white, Colors.green],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

class SText extends StatelessWidget {
  SText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
