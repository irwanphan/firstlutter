import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// MyAppState: the state of MyApp -> widget name / the name just convenient
// state is persisted, while the statefulwidget can be rebuild
// State belong to MyApp written in <>
class _MyAppState extends State<MyApp> {
  
  var _questionIndex = 0;
  
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fave color?', 
      'Who a ya?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Column(
          children: [
            // question constructor in question.dart
            Question(
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}