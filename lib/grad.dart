import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}):super(key: key); //my key arg is returned to parent class
  GradientContainer({super.key, required this.colors});
  final List<Color> colors;
  var diceCount = 'lib/asset/dice-1.png';
  void rollDice() {
    diceCount = 'lib/asset/dice-3.png';
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'The Dice Game',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 36),
            ),
            Padding(padding: EdgeInsets.only(top: 100)),
            Image.asset(
              'lib/asset/dice-2.png',
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
        ),
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
