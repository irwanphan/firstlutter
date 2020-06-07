import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // this value will never change after initialization in the constructor
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // double.infinity means full width
      width: double.infinity,
      margin: EdgeInsets.all(24),
      child: Text(
        questionText, 
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}