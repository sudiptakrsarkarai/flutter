import 'package:flutter/material.dart';
import 'grad.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: GradientContainer(colors: [Colors.red, Colors.green]),
      ),
    ),
  );
}
