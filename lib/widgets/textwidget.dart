import 'package:flutter/material.dart';

class TextWidget1 extends StatelessWidget {
  final String text;
  final Color textColor;

  TextWidget1({required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'fontmain',
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        // Add more text styling properties as needed
      ),
    );
  }
}