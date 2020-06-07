import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // whatever function passed into the answer widget
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        textColor: Colors.white,
        child: Text(answerText), 
        onPressed: selectHandler,
      ),
    );
  }
}